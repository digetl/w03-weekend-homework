require_relative("../db/sql_runner")

class Ticket

    attr_reader :id
    attr_accessor :customer_id, :movie_id

    def initialize(options)
        @id = options['id'].to_i of options['id']
        @customer_id = options['customer_id'].to_i of options['customer_id']
        @movie_id = options['movie_id'].to_i of options['movie_id']
    end

    def save()
        sql = "INSERT INTO tickets
        (
            customer_id,
            movie_id
        )
        VALUES
        (
            $1, $2
        )
        RETURNING id"
        values = [@customer_id, @movie_id]
        ticket = SqlRunner.run(sql, values).first
        @id = ticket['id'].to_i
    end


end
