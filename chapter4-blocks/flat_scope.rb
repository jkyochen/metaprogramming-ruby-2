
my_var = "Success"

# class MyClass

#     puts my_var
#     def my_method
#         puts my_var
#     end
# end

MyClass = Class.new do
    puts "#{my_var} in the class definition"

    define_method :my_method do
        puts "#{my_var} in the method"
    end
end

MyClass.new.my_method
