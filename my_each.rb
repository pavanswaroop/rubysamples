class Array
    def my_each
        c=0
        until c == size
            yield(self[c])
            c+=1

        end
        self
    end

    def my_map
        acc= []
        my_each do |thing|
            acc << yield(thing)
        end     
        acc
    end
end
