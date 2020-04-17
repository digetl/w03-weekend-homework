require_relative( 'models/customer' )
require_relative( 'models/movie' )
require_relative( 'models/ticket' )

require( 'pry' )

Movie1.new({'title' => 'Apocalypse Now', 'price' => '10'})
Movie2.new({'title' => 'Aliens', 'price' => '15'})
Movie3.new({'title' => 'Braveheart', 'price' => '10'})
# Movie4.new({'title' => 'Raiders of the Lost Ark', 'price' => '15'})
# Movie5.new({'title' => 'Die Hard', 'price' => '10'})
# Movie6.new({'title' => 'The Martian', 'price' => '20'})

Movie1.save()
Movie2.save()
Movie3.save()

Customer1.new({'name' => 'Dave Campbell,'wallet' => '100'})
Customer2.new({'name' => 'Ethan Campbell,'wallet' => '90'})
Customer3.new({'name' => 'Kirsty Campbell,'wallet' => '200'})
Customer4.new({'name' => 'Bob Campbell,'wallet' => '50'})
Customer5.new({'name' => 'John Campbell,'wallet' => '50'})
Customer6.new({'name' => 'Harry Campbell,'wallet' => '150'})
Customer7.new({'name' => 'Sally Campbell,'wallet' => '150'})
Customer8.new({'name' => 'Molly Campbell,'wallet' => '5'})

Customer1.save()
Customer2.save()
Customer3.save()
Customer4.save()
Customer5.save()
Customer6.save()
Customer7.save()
Customer8.save()

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