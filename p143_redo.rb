# frozen_string_literal: true

# ruby p143_redo.rb

foods = %w[bread rice noodle]
foods.each do |food|
  print "Do you like #{food}? => "
  answer = %w[yes no].sample
  puts answer

  redo unless answer == 'Yes'
end
