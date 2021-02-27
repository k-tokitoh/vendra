module Vendra
  class YamlBeverageRepository < BeverageRepository
    require "yaml/store"

    class << self
      def store_exists?
        File.exist?(Vendra.store_path)
      end

      def insert(beverage)
        store.transaction do
          beverages = store["beverages"] || []
          store["beverages"] = [*beverages, beverage]
        end
      end

      private

      def store
        @store ||= YAML::Store.new("#{Dir.home}/.vendra/store.yml")
      end
    end
  end
end
