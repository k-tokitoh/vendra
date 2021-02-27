module Vendra
  class YamlDepositRepository < DepositRepository
    require "yaml/store"

    class << self
      def insert(deposit)
        store.transaction do
          store["deposit"] = deposit
        end
      end

      def find
        store.transaction do
          store["deposit"]
        end
      end

      def update(deposit)
        store.transaction do
          store["deposit"] = deposit
        end
      end

      private

      def store
        @store ||= YAML::Store.new("#{Dir.home}/.vendra/store.yml")
      end
    end
  end
end
