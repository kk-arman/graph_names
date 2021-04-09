import os
import dash
import json
import math
import random
import typing
import seaborn
import pandas as pd
import networkx as nx
import plotly.graph_objs as go
import matplotlib.colors as mcolors
import dash_core_components as dcc
import dash_html_components as html

from colour import Color
from datetime import datetime
from textwrap import dedent as d
from pathlib import Path
from urllib.parse import quote
from dataclasses import dataclass
from jupyter_dash import JupyterDash as Dash

# Типы нод
# Типы ребер
# Центральная нода
# Глубина от центральной ноды
# Сортировка по line id


@dataclass
class GraphAttrs:

    node_types: set
    edge_types: set
    colors: dict
    init_lines: dict
    lines: list
    spl: dict
    central_node: int = 1


def extract_graph(graph: nx.MultiDiGraph, src_path: typing.Optional[Path]=None):
    graph_attrs = GraphAttrs(set(), set(), {}, {}, [], dict(nx.all_pairs_shortest_path_length(graph)))
    graph.attrs = graph_attrs
    ids = set()

    for node1, node2, edge in graph.edges(data=True):
        for node in [node1, node2]:
            graph_attrs.node_types.add(graph.nodes[node]['type'])
        graph_attrs.edge_types.add(edge['type'])
        
        for node in[node1, node2]:
            if 'lineID' in graph.nodes[node]:
                ids.add(int(graph.nodes[node]['lineID']))

    init_all_types = graph_attrs.edge_types.copy()
    init_all_types.update(list(graph_attrs.node_types))
    init_all_types = list(sorted(init_all_types))
    palette = seaborn.color_palette('hls', len(init_all_types))
    for key, color in zip(init_all_types, palette.as_hex()):
        graph_attrs.colors[key] = color

    # Source code
    graph_attrs.init_lines = dict()
    if src_path:
        with src_path.open() as f: 
            for i, line in enumerate(f.readlines()):
                if (i+1) in ids:
                    graph_attrs.init_lines[i + 1] = line
    return graph


def to_traces(graph, depth):
    node_types = set(graph.attrs.node_types)
    edge_types = set(graph.attrs.edge_types)
    lines = set(graph.attrs.init_lines)
    deleted_nodes = set()
    deleted_edges = set()
    G = graph.copy()
    edge_traces = []
    node_traces = []
    
    for node1, node2, edge in G.edges(data=True):
        for node in [node1, node2]:
            if len(lines) > 0 and 'lineID' in G.nodes[node] and int(G.nodes[node]['lineID']) not in lines:
                deleted_nodes.add(node)
            if G.nodes[node]['type'] not in node_types or graph.attrs.spl[str(graph.attrs.central_node)][node] > depth:
                deleted_nodes.add(node)
        if edge['type'] not in edge_types:
            deleted_edges.add((node1, node2))
    
    G.remove_nodes_from(deleted_nodes)
    G.remove_edges_from(deleted_edges)
    
    pos = nx.drawing.layout.spring_layout(G)
    for node in G.nodes:
        G.nodes[node]['pos'] = list(pos[node])
    
    traces = []
    jitter = 1 / (30 * math.sqrt(depth))
    for node1, node2, edge in G.edges(data=True):
        x0, y0 = G.nodes[node1]['pos']
        x1, y1 = G.nodes[node2]['pos']
        x0 += random.random() * jitter
        x1 += random.random() * jitter
        y0 += random.random() * jitter
        y1 += random.random() * jitter

        xdir = x0 * .2 + x1 * .8
        ydir = y0 * .2 + y1 * .8
        weight = 2
            
        edge_trace = go.Scatter(x=tuple([x0, x1]), y=tuple([y0, y1]),
                                mode="lines",
                                opacity=0.5,
                                name='',
                                # hovertemplate=f"{edge['type']} {int(node1)}=>{int(node2)}",
                                marker={'color': graph.attrs.colors[edge['type']]},
                           )
        edge_direction = go.Scatter(x=tuple([xdir]), y=tuple([ydir]),
                                    name='',
                                    hovertemplate=f"{edge['type']} {int(node1)}=>{int(node2)}",
                                    marker={'color': graph.attrs.colors[G.nodes[node1]['type']],
                                            'size': 10},
                           )
        traces.append(edge_trace) 
        traces.append(edge_direction) 
    
    node_trace = go.Scatter(
        x=[], y=[], hovertext=[], text=[], mode='markers+text',
        textposition="bottom left", hoverinfo="text",
        hoverlabel={'align': 'left'},
        marker={'size': [], 'color': []})

    def clean_node_text(text):
        new_text = ""
        lines = [l[:50] + '...' if len(l) > 30 else l
                 for l in text.split('\n')]
        if len(lines) > 7:
            text = '<br>'.join([
                lines[0], lines[1], lines[2],
                '...',
                lines[-3], lines[-2], lines[-1]
            ])
        return text

    def get_hover_text(node):
        hover_text = f"{node['type']} / {node['parentType']}<br>{'>' * 40}<br>" 
        for key, value in node.items():
            if key in ['pos', 'type', 'parentType', 'text']:
                continue
            hover_text += f"{key}: {value} <br>"
        text = clean_node_text(node['text'])
        hover_text += f"text {'=' * 35}<br>{text}"
        return hover_text

    for node in G.nodes():
        x, y = G.nodes[node]['pos']
        hovertext = get_hover_text(G.nodes[node])
        node_trace['x'] += tuple([x])
        node_trace['y'] += tuple([y])
        node_trace['hovertext'] += tuple([hovertext])
        node_trace['text'] += tuple([node])
        node_trace['marker']['color'] += tuple([graph.attrs.colors[G.nodes[node]['type']]]) 
        if node == graph.attrs.central_node:
            node_trace['marker']['size'] += tuple([40])
        else:
            node_trace['marker']['size'] += tuple([20])

        traces.append(node_trace)

    return traces
    

# styles: for right side hover/click component
hower_styles = {
    'pre': {
        'border': 'thin lightgrey solid',
        'overflowX': 'scroll'
    }
}


def traces2fig(traces):
    return {
        "data": traces,
        "layout": go.Layout(title='', showlegend=False, hovermode='closest',
                            margin={'b': 40, 'l': 40, 'r': 40, 't': 40},
                            xaxis={'showgrid': False, 'zeroline': False, 'showticklabels': False},
                            yaxis={'showgrid': False, 'zeroline': False, 'showticklabels': False},
                            height=500, width=700,
                            clickmode='event+select',
                            )}


def get_layout(graph):
    traces = to_traces(graph, 2)
    graph_fig = traces2fig(traces)
    default_style={
        'width': '220px',
        'fontSize':13,
        'display': 'inline-block', 'verticalAlign': 'top'
    }
    options_style={
        'width': '160px',
        'fontSize':10,
        'display': 'inline-block', 'verticalAlign': 'top'
    }
    main_section = [

        html.Div(
            className="Graph",
            children=[dcc.Graph(id="my-graph", figure=graph_fig)],
        ),
        html.Div(
            className="row",
            children=[
                html.Div(
                    className="Types",
                    children=[
                        dcc.Markdown(d("""**Node types**""")),
                        dcc.Checklist(
                            id='node-types',
                            options=[{'label': node_type, 'value': node_type}
                                     for node_type in graph.attrs.node_types],
                            value=[node_type for node_type in graph.attrs.node_types]
                        )
                    ],
                    style=options_style
                ),
                html.Div(
                    className="Types",
                    children=[
                        dcc.Markdown(d("""**Edge types**""")),
                        dcc.Checklist(
                            id='edge-types',
                            options=[{'label': edge_type.lower().capitalize(), 'value': edge_type}
                                     for edge_type in graph.attrs.edge_types],
                            value=[edge_type for edge_type in graph.attrs.edge_types]
                        )
                    ],
                    style=options_style
                ),
                html.Div(
                    className="Depth",
                    children=[
                        dcc.Markdown(d("""**Depth**""")),
                        dcc.Input(id='depth', type="text", placeholder="Depth")
                    ],
                    style=options_style
                ),
                html.Div(
                    className="Main node",
                    children=[
                        dcc.Markdown(d("""**Main node**""")),
                        dcc.Input(id='main-node', type="text", placeholder="Main node id")
                    ],
                    style=options_style
                ),
            ]
        ),
    ]
    lines_section = [
        html.Br(),
        html.Button('Toggle lines', id='fill-list-lines'),
        html.Div(
            className="Types",
            children=[
                dcc.Checklist(
                    id='lines',
                    options=[{'label': f"{str(key).zfill(4)}: {value}", 'value': key}
                             for key, value in graph.attrs.init_lines.items()],
                    value=[key for key, value in graph.attrs.init_lines.items()],
                )
            ],
            style={'fontSize':11,  'white-space': 'pre'}
        ),
    ]

    if graph.attrs.init_lines:
        layout = html.Div(main_section + lines_section)
    else:
        layout = html.Div(main_section)

    return layout


def make_app(graph: nx.MultiDiGraph, src_path: typing.Optional[Path]=None):

    app = Dash(__name__, external_stylesheets=['https://codepen.io/chriddyp/pen/bWLwgP.css'])
    graph_data = extract_graph(graph, src_path)
    app.title = ''
    app.layout = get_layout(graph)

    if src_path:
        @app.callback(
            dash.dependencies.Output('my-graph', 'figure'),
            [dash.dependencies.Input('node-types', 'value'),
            dash.dependencies.Input('edge-types', 'value'),
            dash.dependencies.Input('depth', 'value'),
            dash.dependencies.Input('main-node', 'value'),
            dash.dependencies.Input('lines', 'value')])
        def pdate_output(node_types, edge_types, depth, main_node, lines):
            depth = depth or 2
            main_node = main_node or '1'
            lines = list(map(int, lines))
            graph.attrs.central_node = str(main_node)
            graph.attrs.edge_types = edge_types
            graph.attrs.node_types = node_types
            graph.attrs.lines = lines
            return traces2fig(to_traces(graph, int(depth)))

        @app.callback(
            dash.dependencies.Output('lines', 'value'),
            [dash.dependencies.Input('fill-list-lines', 'n_clicks')])
        def updateChecklist(n_clicks):
            if n_clicks is None:
                return []
            elif n_clicks % 2 == 1:
                return [key for key, value in graph.attrs.init_lines.items()]
            else:
                return []
    else:
        @app.callback(
            dash.dependencies.Output('my-graph', 'figure'),
            [dash.dependencies.Input('node-types', 'value'),
            dash.dependencies.Input('edge-types', 'value'),
            dash.dependencies.Input('depth', 'value'),
            dash.dependencies.Input('main-node', 'value')])
        def pdate_output(node_types, edge_types, depth, main_node):
            depth = depth or 2
            main_node = main_node or '1'
            graph.attrs.central_node = str(main_node)
            graph.attrs.edge_types = edge_types
            graph.attrs.node_types = node_types
            return traces2fig(to_traces(graph, int(depth)))

    return app

def visualize(graph: nx.MultiDiGraph, port, src_path: typing.Optional[Path]=None):
    app = make_app(graph, src_path)
    app.run_server(mode='inline', port=port)