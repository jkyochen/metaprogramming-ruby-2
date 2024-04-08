
# 1
p = Proc.new { return 10 }
# puts p.call

# 2
def get_me_a_return
  Proc.new { return 42 }
end
puts get_me_a_return.call
