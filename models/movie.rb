require_relative("../db/sql_runner")

class Movie

    attr_reader :id
    attr_accessor :title, :price

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @title = options['title']
        @price = options['price']
    end

    def save()
        sql = "INSERT INTO
        movies
        (
            title,
            price
            )
            VALUES
            (
                $1, $2
            )
            RETURNING id"
            values = [@title, @price]
            movie = SqlRunner.run(sql, values).first
            @id = movie['id'].to_i
    end



end
