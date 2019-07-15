class GraphNode

    attr_accessor: 

    def initialize(value, *neighbors)
        @value = value
        @neighbors = neighbors
    end

    def set_neighbor(neighbor)
        @neighbors << neighbor
    end

end