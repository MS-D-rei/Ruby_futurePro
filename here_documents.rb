# frozen_string_literal: true

puts <<~GROCERY_LIST
  Grocery list
  ----------------
  1. Salad mix.
  2. Strawberries.*
  3. Cereal.
  4. Milk.*

  * Organic
GROCERY_LIST

lang = 'Ruby'
lang.prepend(<<~PROGRAMMING_LANGUAGE)
  Java
  PHP
  Python
PROGRAMMING_LANGUAGE
puts lang
