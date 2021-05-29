# ruby p332_exception1.rb

def method_1
    puts 'method_1 start.'
    begin
        method_2
    rescue
        puts 'exception occured'
    end
    puts 'method_1 end.'
end


def method_2
    puts 'method_2 start.'
    method_3
    puts 'method_2 end.'
end

def method_3
    puts 'method_3 start.'
    begin
        1 / 0 # => ZeroDivisionError
    rescue => exception # rescue => object_name we want to contain the error in.
        puts "Error class: #{exception.class}"
        puts "Error message: #{exception.message}"
        puts "Backtrace -----"
        puts exception.backtrace
        puts "-----"
    end

    puts 'method_3 end.'
end

method_1

# result
=begin
method_1 start.
method_2 start.
method_3 start.
Error class: ZeroDivisionError
Error message: divided by 0
Backtrace -----
p332_exception1.rb:23:in `/'
p332_exception1.rb:23:in `method_3'
p332_exception1.rb:16:in `method_2'
p332_exception1.rb:6:in `method_1'
p332_exception1.rb:35:in `<main>'
-----
method_3 end.
method_2 end.
method_1 end.
=end

=begin
method_1
method_2
method_3
error
if method_3 has exception => method_3 rescue
if method_2 has exception => method_2 rescue
if method_1 has exception => method_1 rescue
program stop by error
=end