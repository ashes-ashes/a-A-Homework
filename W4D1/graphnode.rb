class GraphNode

    attr_accessor :value, :neighbors

    def initialize(value, *neighbors)
        @value = value
        @neighbors = neighbors
    end

    def neighbors=(neighbors)
        @neighbors += neighbors
        neighbors.each { |node| node.neighbors << self }
    end

    def inspect
        @value
    end

end

def bfs(starting_node, target_value)
    visited_nodes = []
    node_queue = [starting_node]
    new_nodes = true
    while new_nodes == true && !node_queue.empty?
        new_nodes = false
        searchthis = node_queue.shift
        searchthis.neighbors.each do |node|
            if node.value == target_value
                return node
            elsif !visited_nodes.include?(node)
                new_nodes = true
                node_queue << node
                visited_nodes << node
            end
        end
    end
    nil
end

if __FILE__ == $PROGRAM_NAME
    a = GraphNode.new('a')
    b = GraphNode.new('b')
    c = GraphNode.new('c')
    d = GraphNode.new('d')
    e = GraphNode.new('e')
    f = GraphNode.new('f')
    a.neighbors = [b, c, e]
    c.neighbors = [b, d]
    e.neighbors = [a]
    f.neighbors = [e]
    p bfs(a, "b")
    p bfs(a, "f")
end