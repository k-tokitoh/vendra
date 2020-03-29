module Warning
  def self.warn(*message)
    super if ENV['CLI_ENV'] == "development"
  end
end
