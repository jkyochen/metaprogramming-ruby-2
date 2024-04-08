
# 1. return
## lambda
def double(callable_object)
    callable_object.call * 2
end

l = lambda { return 10 }
puts double(l)

## proc
def another_double
    p = Proc.new { return 10 }
    result = p.call
    return result * 2 # can't reach.
end

puts another_double

# 2. param count
## lambda param count is fixed

## proc
p = Proc.new { |a, b| [a, b] }
puts p.arity
p.call(1, 2, 3)
p.call(1)
p.call()
