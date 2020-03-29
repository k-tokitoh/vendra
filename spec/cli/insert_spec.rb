RSpec.describe CLI::Insert, type: :aruba do
  context 'called with an invalid value' do
    before(:each) { run_command('vendra insert 101') }
    let(:content) { "Given 101 yen coin/bill is returned because it is invalid. The value must be one of 10, 50, 100, 500, 1000."}
    it { expect(last_command_started).not_to be_successfully_executed }
    it { expect(last_command_started).to have_output content }
  end

  context 'called with a valid value' do
    before(:each) { run_command('vendra insert 100') }
    let(:content) { "total deposit: 100"}
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output content }
  end
end