require 'serverspec'
  set :backend, :exec

  describe 'apache' do
      it "is great" do
        expect(true).to eq true
      end
  end
