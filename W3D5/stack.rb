class Stack

    attr_accessor :stack

    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        popped = @stack[-1]
        @stack = @stack[0...-1]
        popped
    end

    def peek
        @stack[-1]
    end
end