require_relative("../db/sql_runner")

class Ticket

    attr_reader :id
    attr_accessor :customer_id, :movie_id, :number_of_tickets_bought

    def initialize(options)
        @id = options['id'].to_i if options['id']
        @customer_id = options['customer_id'].to_i if options['customer_id']
        @movie_id = options['movie_id'].to_i if options['movie_id']
        @number_of_tickets_bought = options['number_of_tickets_bought'].to_i if options['number_of_tickets_bought']
    end

    def save()
        sql = "INSERT INTO tickets
        (
            customer_id,
            movie_id,
            number_of_tickets_bought
        )
        VALUES
        (
            $1, $2, $3
        )
        RETURNING id"
        values = [@customer_id, @movie_id, @number_of_tickets_bought]
        ticket = SqlRunner.run(sql, values).first
        @id = ticket['id'].to_i
    end

    def self.all()
        sql = "SELECT * FROM tickets"
        ticket_data = SqlRunner.run(sql)
        return Ticket.map_items(ticket_data)
    end

    def update()
        sql = "UPDATE tickets
        SET
        (customer_id,
        movie_id,
        number_of_tickets_bought)
        =
        (
            $1, $2, $3
        )
        WHERE id = $4"
        values = [@customer_id, @movie_id, @number_of_tickets_bought, @id]
        SqlRunner.run(sql, values)
    end


    def self.delete_all()
        sql = "DELETE FROM tickets"
        SqlRunner.run(sql)
    end

    def customer()
        sql = "SELECT *
        FROM customers
        WHERE id = $1"
        values = [@customer_id]
        customer = SqlRunner.run(sql, values).first
        return Customer.new(customer)
    end

    def movie()
        sql = "SELECT *
        FROM tickets
        WHERE id =$1"
        values = @movie_id
        movie = SqlRunner.run(sql, values).first
        return Movie.new(movie)
    end

    def self.map_items(ticket_data)
        result = ticket_data.map { |ticket| Ticket.new( ticket ) }
        return result
    end

  


end
