
# 1
inc = Proc.new { |x| x + 1 }
puts inc.call(2)

# 2
dec = lambda { |x| x - 1 }
puts dec.class
puts dec.call(2)

# 3
dec1 = proc { |x| x - 1 }
puts dec1.class
puts dec1.call(2)

# 4
p = ->(x) { x + 1 }
puts p.call(2)

# 5
def my_method(&the_proc)
    the_proc
end

p = my_method { |name| "Hello, #{name}" }
puts p.class
puts p.call("Bill")
