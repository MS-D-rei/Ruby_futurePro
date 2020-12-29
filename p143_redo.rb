# ruby p143_redo.rb

foods = ['bread', 'rice', 'noodle']
foods.each do |food|
    print "Do you like #{food}? => "
    answer = ['Yes', 'No'].sample
    puts answer

    redo unless answer == 'Yes'
end