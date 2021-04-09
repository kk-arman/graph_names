def node_has_tokens(node):
    if 'identifier' in node and node['type'] == 'SimpleName' and node['parentType'] in ['VariableDeclarator', 'Parameter', 'NameExpr', 'MethodDeclaration', 'FieldAccessExpr', 'MethodCallExpr', 'ClassOrInterfaceDeclaration']:
        return True
    return False

def createTrace(trace_nodes, trace_pairs, inv_trace_pairs):
    tail_traces = []
    head_traces = []
    start_trace = min(trace_nodes)

    tail_trace(start_trace, trace_pairs, tail_traces, inv_trace_pairs) 
    if start_trace in inv_trace_pairs:
        head_trace(start_trace, inv_trace_pairs, head_traces)
        head_traces.extend(tail_traces)
        return head_traces
    else:
        # most probably there is a gap in traces 
        return tail_traces

def tail_trace(n, trace_pairs, tail_traces, inv_trace_pairs):
    v = trace_pairs[n]

    tail_traces.append(n)
    trace_pairs.pop(n, None)
    inv_trace_pairs.pop(v, None)

    if v in trace_pairs:
        tail_trace(v, trace_pairs, tail_traces, inv_trace_pairs)
    else:
        tail_traces.append(v)

def head_trace(n, inv_trace_pairs, head_traces):
    v = inv_trace_pairs[n]

    inv_trace_pairs.pop(n, None)
    head_traces.append(n)
    
    if v in inv_trace_pairs:
        head_trace(v, inv_trace_pairs, head_traces)
    else:
        head_traces.append(v)
        head_traces.reverse()
        head_traces.pop()


def print_prediction(logits, y, vocabulary):
        result_truth=""
        result_predicted=""
        for i in range(y.size(0)):
            for j in range(y.size(1)):        
                result_truth += vocabulary.inv_token_encoder[y[i,j].item()]+" "
                result_predicted += vocabulary.inv_token_encoder[logits[i,j].item()]+" "
            print('Truth:',result_truth)
            print('Predicted: ',result_predicted)
            print('')
            result_truth=''
            result_predicted=''