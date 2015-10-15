require 'spec_helper'

RSpec.describe Ordspel::Language do

  it 'bostonify should return the right string' do
    string = "I parked my car at Harvard yard."
    expect(string.bostonify).to eq("I pahked my cah at Hahvahd yahd.")
  end

end