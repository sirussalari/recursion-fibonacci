#USING ITERATION
def fibs(n)
    range = n - 2
    fib_arr = [0, 1]

    for i in 0...range
        preceeding_fib = fib_arr[fib_arr.length - 2]
        current_fib = fib_arr[fib_arr.length - 1]
        subsequent_fib = current_fib + preceeding_fib
        fib_arr.push(subsequent_fib)
    end

    return fib_arr
end

#USING RECURSION
def fibs_rec(n, fib_arr = [0, 1])
    preceeding_fib = fib_arr[fib_arr.length - 2]
    current_fib = fib_arr[fib_arr.length - 1]
    subsequent_fib = preceeding_fib + current_fib
    fib_arr.push(subsequent_fib)

    if n > 3
        fibs_rec(n - 1, fib_arr)
    end

    return fib_arr 
end