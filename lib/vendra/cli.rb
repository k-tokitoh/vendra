# frozen_string_literal: true

require "thor"
require_relative "../vendra"

module Vendra
  class CLI < Thor
    include Thor::Actions

    desc "insert CASH_VALUE", "Insert a coin or a bill."
    def insert(value)
      cash_piece = CashPiece.new(value)
      deposit = Deposit.instance
      deposit.insert(cash_piece)
      puts "inserted: #{value}"
      puts "deposit: #{deposit.total} (#{deposit.cash_pieces.map(&:value).join(" ")})"
    end
  end
end
