# frozen_string_literal: true

require "yaml/store"
require_relative "vendra/version"
require_relative "vendra/domain/index"
require_relative "vendra/infrastructure/index"

module Vendra
  class Error < StandardError; end

  class << self
    def repositories
      {
        deposits: YamlDepositRepository,
        beverages: YamlBeverageRepository
      }
    end

    # TODO: move.
    def store_path
      "#{Dir.home}/.vendra/store.yml"
    end

    def initialize
      Vendra.constants.each do |sym|
        const = const_get(sym)
        const.initialize if const.respond_to?(:initialize)
      end
    end
  end
end

Vendra.initialize
