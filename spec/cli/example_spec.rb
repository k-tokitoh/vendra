# frozen_string_literal: true

require_relative "../../lib/vendra/cli"

RSpec.describe Vendra::CLI do
  describe "example" do
    it "outputs that command is called" do
      output = capture(:stdout) { described_class.start(%w[example]) }
      expect(output).to include "command called."
    end
  end
end
