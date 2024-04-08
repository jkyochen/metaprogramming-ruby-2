class MyClass
    def initialize(value)
        @x = value
    end
    def my_method
        @x
    end
end

object = MyClass.new(1)
m = object.method :my_method
puts m.call

# proc
puts m.to_proc.class
puts m.to_proc.call
