 class LRUCache
    def initialize(length)
        @cache = Array.new(length)
    end

    def count
      # returns number of elements currently in cache
        @cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @cache.include(el)
        del = @cache.index(el)
        @cache.slice!(el)
      else
        @cache.shift
      end
      @cache << el
    end

    def show
      # shows the items in the cache, with the LRU item first
        puts @cache
    end

    private
    # helper methods go here!

  end