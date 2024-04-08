
lambda {

    setups = []
    events = []

    Kernel.send :define_method, :setup do |&block|
        setups << block
    end

    Kernel.send :define_method, :event do |description, &block|
        events << { :description => description, :condition => block }
    end

    Kernel.send :define_method, :each_setup do |&block|
        setups.each do |setup|
            block.call(setup)
        end
    end

    Kernel.send :define_method, :each_event do |&block|
        events.each do |event|
            block.call(event)
        end
    end

}.call

load "events.rb"

each_event do |event|
    each_setup { |setup| setup.call }
    puts "ALERT: #{event[:description]}" if event[:condition].call
end

puts "---\nClean Room."

each_event do |event|
    env = Object.new
    each_setup { |setup| env.instance_eval(&setup) }
    puts "ALERT: #{event[:description]}" if env.instance_eval(&event[:condition])
end
