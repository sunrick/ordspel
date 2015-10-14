require 'spec_helper'

RSpec.describe Ordspel::Language do
  it 'swedify should return the right string' do
    string = "Hello Olaf!"
    expect(string.swedify).to eq("Hällö Ölåf!")
  end
  
end