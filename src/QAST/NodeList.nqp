class QAST::NodeList is QAST::Node does QAST::Children {
    method new(*@children, *%options) {
        my $node := nqp::create(self);
        nqp::bindattr_i($node, QAST::Node, '$!flags', 0);
        nqp::bindattr($node, QAST::NodeList, '@!children', @children);
        $node.set(%options) if %options;
        $node
    }
}
