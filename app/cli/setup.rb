class CLI
  class Setup
    def call
      if ActiveRecord::Base.connection.tables.present?
        STDERR.puts "Application is already setup."
        exit(false)
      end

      require_relative "../../db/migrate"
      require_relative "../../db/seeds"
    end
  end
end
