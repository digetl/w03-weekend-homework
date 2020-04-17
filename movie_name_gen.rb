# movie1 = Movie.new({'title' => 'Kill Bill Vol1', 'genre' => 'action'})

    counter = 0
    
    while counter <3
        puts "Movie Name?"
        temp_movie_name = gets.chomp
        puts "Movie Genre?"
        temp_movie_genre = gets.chomp
        p "Movie#{counter} #{temp_movie_name} and #{temp_movie_genre}"
        counter += 1
    end