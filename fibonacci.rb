class Fibonacci
    @@fib_arr = [0, 1]

    def self.fibs(n)
        range = n - 2
        fib_arr = @@fib_arr

        for i in 0...range
            preceeding_fib = fib_arr[fib_arr.length - 2]
            current_fib = fib_arr[fib_arr.length - 1]
            subsequent_fib = current_fib + preceeding_fib
            fib_arr.push(subsequent_fib)
        end

        return fib_arr
    end

    def self.fibs_rec(n)
        fib_arr = @@fib_arr
        preceeding_fib = fib_arr[fib_arr.length - 2]
        current_fib = fib_arr[fib_arr.length - 1]
        subsequent_fib = preceeding_fib + current_fib
        fib_arr.push(subsequent_fib)

        if n > 3
            self.fibs_rec(n - 1)
        end

        return fib_arr 
    end
end