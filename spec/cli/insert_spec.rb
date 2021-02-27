# frozen_string_literal: true

require_relative "../../lib/vendra/cli"

RSpec.describe Vendra::CLI do
  describe "insert" do
    it "outputs inserted and deposited cache values" do
      output = capture(:stdout) { described_class.start(%w[insert 100]) }
      expect(output).to match(/inserted: 100\ndeposit: 100 \(100\)/)
    end
  end
end
