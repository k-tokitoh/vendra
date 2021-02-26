# frozen_string_literal: true

require "thor"

module Vendra
  class CLI < Thor
    desc "this is summary.", "this is detailed description."
    def example
      p "command called."
    end
  end
end
