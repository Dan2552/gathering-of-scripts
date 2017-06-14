require 'pry'

RSpec.describe "rspec console" do
  before do
    begin
    VCR.insert_cassette("delete_me")
    rescue
    end
  end
  it { binding.pry }
end
