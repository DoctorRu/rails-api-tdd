RSpec.describe Fixnum do
    describe 'inner' do
      describe String do
        it "is available as described_class" do
          expect(described_class).to eq(String)
        end
      end
    end
  end