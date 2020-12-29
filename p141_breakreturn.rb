# ruby p141_breakreturn.rb

def clac_with_break
    numbers = [1, 2, 3, 4, 5, 6]
    target = nil
    numbers.shuffle.each do |n|
        target = n
        break if n.even?
    end
    p target * 10
end

clac_with_break

def clac_with_return
    numbers = [1, 2, 3, 4, 5, 6]
    target = nil
    numbers.shuffle.each do |n|
        target = n
        return if n.even?
    end
    p target * 10
end

clac_with_return