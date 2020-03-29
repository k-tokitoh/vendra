RSpec.describe CLI::Refund, type: :aruba do
  context 'called' do
    before(:each) { run_command('vendra refund') }
    let(:content) { "You got a refund of 0 yen."}
    it { expect(last_command_started).to be_successfully_executed }
    it { expect(last_command_started).to have_output content }
  end
end