package com.github.javaparser.ast.nodeTypes.modifiers;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.nodeTypes.NodeWithModifiers;

import static com.github.javaparser.ast.Modifier.*;

/**
 * A node that can be protected.
 */
public interface NodeWithProtectedModifier<N extends Node> extends NodeWithModifiers<N> {
    default boolean isProtected() {
        return getModifiers().contains(PROTECTED);
    }

    @SuppressWarnings("unchecked")
    default N setProtected(boolean set) {
        return setModifier(PROTECTED, set);
    }
}
