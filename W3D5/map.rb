class Map

    attr_accessor :map

    def initialize
        @map = []
    end

    def set(key, value)
        if @map.none? { |el| el.include?(key)}
            @map << [key, value]
        else
            @map.each_with_index { |el, i| el[1] = value if el[0] == key }
        end
    end

    def get(key)
        @map.each { |el| return el[1] if el[0] == key }
    end

    def delete(key)
        @map.select! { |el| el[0] != key }
    end

    def show
        @map.each { |el| puts "#{el[0]} => #{el[1]}"}
    end

end