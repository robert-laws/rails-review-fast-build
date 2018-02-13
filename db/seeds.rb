# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.delete_all
Author.delete_all
OfficeLocation.delete_all
Publisher.delete_all

@author_1 = Author.create(name: "Bob Cobb", age: 43)
@author_2 = Author.create(name: "Hal Hope", age: 27)
@author_3 = Author.create(name: "Val Vine", age: 26)
@author_4 = Author.create(name: "Jim Jupe", age: 35)

Book.create(title: "Stuff Happens", pages: 75, publication_date: DateTime.new(2017, 5, 31, 0, 0, 0), author: @author_1)
Book.create(title: "New Beginnings", pages: 152, publication_date: DateTime.new(2016, 10, 28, 0, 0, 0), author: @author_2)
Book.create(title: "Out in the Cold", pages: 278, publication_date: DateTime.new(2011, 2, 11, 0, 0, 0), author: @author_3)
Book.create(title: "Voyages Abroad", pages: 143, publication_date: DateTime.new(2005, 8, 7, 0, 0, 0), author: @author_4)
Book.create(title: "Rainy Days", pages: 283, publication_date: DateTime.new(2012, 9, 26, 0, 0, 0), author: @author_1)
Book.create(title: "Finding a Friend", pages: 478, publication_date: DateTime.new(2016, 11, 16, 0, 0, 0), author: @author_2)
Book.create(title: "Mr. Billingsworth", pages: 85, publication_date: DateTime.new(2011, 12, 1, 0, 0, 0), author: @author_3)
Book.create(title: "Adventures in Cooking", pages: 158, publication_date: DateTime.new(2002, 12, 8, 0, 0, 0), author: @author_4)
Book.create(title: "Relative Space", pages: 256, publication_date: DateTime.new(2018, 7, 18, 0, 0, 0), author: @author_1)
Book.create(title: "Once I went Outside", pages: 31, publication_date: DateTime.new(2017, 4, 16, 0, 0, 0), author: @author_2)
Book.create(title: "Dancing Melodies", pages: 118, publication_date: DateTime.new(2015, 6, 5, 0, 0, 0), author: @author_3)
Book.create(title: "Artful Escapes", pages: 127, publication_date: DateTime.new(2009, 9, 7, 0, 0, 0), author: @author_4)
Book.create(title: "Managing Work Parties", pages: 62, publication_date: DateTime.new(2005, 10, 23, 0, 0, 0), author: @author_1)

@publisher_1 = Publisher.create(name: "Mansion Books", employees: 34)
@publisher_2 = Publisher.create(name: "House of Paper", employees: 12)
@publisher_3 = Publisher.create(name: "Oddball Publishers", employees: 74)

OfficeLocation.create(city: "London", publisher: @publisher_1)
OfficeLocation.create(city: "Paris", publisher: @publisher_2)
OfficeLocation.create(city: "New York", publisher: @publisher_3)
OfficeLocation.create(city: "Chicago", publisher: @publisher_1)