require 'spec_helper'

RSpec.describe Ordspel::Language do

  it 'bostonify should return the right string' do
    string = "I parked my car at Harvard yard."
    expect(string.bostonify).to eq("I pahked my cah at Hahvahd yahd.")
  end

  it 'minnesotafy should return the right string' do
    string = "I parked my car at Harvard yard."
    expect(string.minnesotafy).to eq("Oh ya I parked my car at Harvard yard you bet ya.")
    string = "My mom loves cheese. She really does. Yep she really does."
    expect(string.minnesotafy).to eq("Oh ya My mom loves cheese you bet ya. Oh ya She really does you bet ya. Oh ya Yep she really does you bet ya.")
    string = "This.is a crazy test."
    expect(string.minnesotafy).to eq("Oh ya This.is a crazy test you bet ya.")
    end

end