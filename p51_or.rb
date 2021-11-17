# frozen_string_literal: true

def greeting(country)
  country || (return 'plz input country')

  if country == 'japan'
    'ussu'
  else
    'Hi'
  end
end

puts greeting(nil)
puts greeting('japan')
