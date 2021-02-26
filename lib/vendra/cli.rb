# frozen_string_literal: true

require "thor"

module Vendra
  class CLI < Thor
    include Thor::Actions

    desc "this is summary.", "this is detailed description."
    def example
      p "command called."
      create_file "~/.vendra/example.conf", "your vendra config"
    end
  end
end
