# ruby p373_procObject1.rb

# proc class contains the block content as a object.
add_proc = Proc.new { |a = 0, b = 0| a + b }

# call method can run the content of the block with arguments.
puts add_proc.call
puts add_proc.call(10)
puts add_proc.call(10, 20)

def greeting(&block)
    puts block.class
    puts 'morning'
    text = block.call('afternoon')
    puts text
    puts 'evening'
end

repeat_proc = Proc.new { |text| text * 2 }
greeting(&repeat_proc)

# We can pass proc object as normal arguments.
def greeting(normal_argu1, normal_argu2, normal_argu3)
    puts normal_argu1.call('morning')
    puts normal_argu2.call('afternoon')
    puts normal_argu3.call('evening')
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
question_proc = Proc.new { |text| "#{text}?" }

greeting(shuffle_proc, repeat_proc, question_proc)
