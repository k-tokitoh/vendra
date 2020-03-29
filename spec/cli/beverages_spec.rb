RSpec.describe CLI::Insert, type: :aruba do
  context 'called' do
    before(:each) { run_command('vendra beverages') }
    let(:content) {
      <<~EOS
        +-------+------+-------+
        | price | name | count |
        +-------+------+-------+
        | 120   | cola | 5     |
        +-------+------+-------+
      EOS
    .chomp }
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output content }
  end
end