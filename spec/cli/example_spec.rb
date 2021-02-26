# frozen_string_literal: true

require_relative "../../lib/vendra/cli"

RSpec.describe Vendra::CLI do
  it "has a version number" do
    expect(Vendra::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
