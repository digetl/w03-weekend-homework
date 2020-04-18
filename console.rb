require_relative( 'models/customer' )
require_relative( 'models/movie' )
require_relative( 'models/ticket' )

require( 'pry' )

# Ticket.delete_all()
# Movie.delete_all()
# Customer.delete_all()

movie1 = Movie.new({'title' => 'Apocalypse Now', 'price' => '10'})
movie2 = Movie.new({'title' => 'Aliens', 'price' => '15'})
movie3 = Movie.new({'title' => 'Braveheart', 'price' => '10'})
# Movie4.new({'title' => 'Raiders of the Lost Ark', 'price' => '15'})
# Movie5.new({'title' => 'Die Hard', 'price' => '10'})
# Movie6.new({'title' => 'The Martian', 'price' => '20'})

movie1.save()
movie2.save()
movie3.save()

customer1 = Customer.new({'name' => 'Dave Campbell','wallet' => '100'})
customer2 = Customer.new({'name' => 'Ethan Campbell','wallet' => '90'})
customer3 = Customer.new({'name' => 'Kirsty Campbell','wallet' => '200'})
customer4 = Customer.new({'name' => 'Bob Campbell','wallet' => '50'})
customer5 = Customer.new({'name' => 'John Campbell','wallet' => '50'})
customer6 = Customer.new({'name' => 'Harry Campbell','wallet' => '150'})
customer7 = Customer.new({'name' => 'Sally Campbell','wallet' => '150'})
customer8 = Customer.new({'name' => 'Molly Campbell','wallet' => '5'})

customer1 = Customer.save()
customer2 = Customer.save()
customer3 = Customer.save()
customer4 = Customer.save()
customer5 = Customer.save()
customer6 = Customer.save()
customer7 = Customer.save()
customer8 = Customer.save()

ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'movie_id' => movie1.id, 'number_of_tickets_bought' => '2'})

ticket2 = Ticket.new({ 'customer_id' => customer2.id, 'movie_id' => movie2.id, 'number_of_tickets_bought' => '4'})

ticket3 = Ticket.new({ 'customer_id' => customer3.id, 'movie_id' => movie3.id, 'number_of_tickets_bought' => '6'})

ticket4 = Ticket.new({ 'customer_id' => customer4.id, 'movie_id' => movie1.id, 'number_of_tickets_bought' => '12'})

ticket5 = Ticket.new({ 'customer_id' => customer5.id, 'movie_id' => movie2.id, 'number_of_tickets_bought' => '14'})

ticket6 = Ticket.new({ 'customer_id' => customer6.id, 'movie_id' => movie3.id, 'number_of_tickets_bought' => '16'})

ticket7 = Ticket.new({ 'customer_id' => customer7.id, 'movie_id' => movie1.id, 'number_of_tickets_bought' => '4'})

ticket8 = Ticket.new({ 'customer_id' => customer8.id, 'movie_id' => movie2.id, 'number_of_tickets_bought' => '12'})

ticket1.save()
ticket2.save()
ticket3.save()
ticket4.save()
ticket5.save()
ticket6.save()
ticket7.save()
ticket8.save()




binding.pry
nil