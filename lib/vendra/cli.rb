# frozen_string_literal: true

require "thor"
require_relative "../vendra"

class Vendra::CLI < Thor
  include Thor::Actions

  desc "example", "An example command."
  def example
    p "command called."
    create_file "~/.vendra/example.conf", "your vendra config"
  end

  desc "insert CACHE_VALUE", "Insert a coin or a bill."
  def insert(value)
    cache_piece = CachePiece.new(value)
    deposit = Deposit.instance
    deposit.insert(cache_piece)
    puts "inserted: #{value}"
    puts "deposit: #{deposit.total} (#{deposit.cache_pieces.map(&:value).join(" ")})"
  end
end
