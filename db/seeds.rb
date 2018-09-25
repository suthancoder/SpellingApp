# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Word.all.each do | i|
  i.destroy
end

def generate_word
  # new_word1 = Faker::GameOfThrones.quote
  # new_word2 = Word.new
  # new_word2.word = new_word1
  # new_word2.save

  new_word = Word.create(word: Faker::Color.color_name)
  new_word.save
end

10.times do
  generate_word
end


