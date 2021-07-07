# ruby p390_Proc_closure.rb

def generate_proc(array)
    counter = 0
    Proc.new do
        counter += 10
        array << counter
    end
end

values = []
sample_proc = generate_proc(values)
p values # => []

sample_proc.call
p values # => [10]

sample_proc.call
p values # => [10, 20]
p counter # NameError undefined local variable 