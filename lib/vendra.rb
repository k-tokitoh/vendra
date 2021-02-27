# frozen_string_literal: true

require "yaml/store"
require_relative "vendra/version"
require_relative "vendra/domain/index"
require_relative "vendra/infrastructure/index"

module Vendra
  class Error < StandardError; end

  def self.repositories
    {
      deposit: YamlDepositRepository
    }
  end
end
