require_relative("../db/sql_runner")

class Customer

attr_reader :id
attr_accessor :name, :wallet

    def initialize( options )
        @id = options['id'].to_i if options['id']
        @name = options['name']
        @wallet = options['wallet']
    end

    def save()
        sql = "INSERT INTO
        customers
        (
            name,
            wallet
        )
        VALUES
        (
            $1, $2
        )
        RETURNING id"
        values = [@name, @wallet]
        customer = SqlRunner.run(sql, values).first
        @id = customer['id'].to_i
    end

    def self.all()
        sql "SELECT FROM * customers"
        customer_data = SqlRunner.run(sql)
        return Customer.map_items(customer_data)
    end

    def self.delete_all()
        sql = "DELETE FROM customers"
        SqlRunner.run(sql)
    end

    def self.map_items(customer_data)
        result = customer_data.map { |customer| Customer.new( customer ) }
        return result
      end
    


end
