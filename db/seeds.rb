# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.where(title: 'The Hobbit').first_or_create!(title: 'The Hobbit', author: 'J.R.R. Tolkien',
 price: 22000, published_on: '1937-09-21', image_file_name: 'TheHobbit.jpg', genre_id: "3",
 abstract: 'Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely
  traveling any farther than his pantry or cellar. But his contentment is di
  sturbed when the wizard Gandalf and a company of dwarves arrive on his doorste
  p one day to whisk him away on an adventure. They have launched a plot to raid the treasure hoard guard
  ed by Smaug the Magnificent, a large and very dangerous dragon. Bilbo reluctantly joins their quest, unaw
  are that on his journey to the Lonely Mountain he will encounter both a magic ring and a frightening creature known as Gollum.')
Book.where(title: 'The Fellowship of the Ring').first_or_create!(title: 'The Fellowship of the Ring', 
author: 'J.R.R. Tolkien', price: 8, genre_id: "2", published_on: '1954-07-29', 
image_file_name: 'FellowshipOfTheRing.jpg', 
abstract: 'The Fellowship of the Ring is the first of three volumes of the epic novel The Lord of the Rings by the English author J. R. R. Tolkien. It takes place in the fictional universe of Middle-earth. It was originally published on July 29, 1954 in the United Kingdom.')
Book.where(title: 'The Two Towers').first_or_create!(title: 'The Two Towers', 
	author: 'J.R.R. Tolkien', price: 8, genre_id: "1", published_on: '1951-11-11', 
	image_file_name: 'TheTwoTowers.jpg', 
	abstract: "The Two Towers is the second volume of J. R. R. Tolkien's high fantasy novel The Lord of the Rings. It is preceded by The Fellowship of the Ring and followed by The Return of the King.")
