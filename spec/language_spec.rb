require 'spec_helper'

RSpec.describe Ordspel::Language do

  it 'swedify should return the right string' do
    string = "Hello Olaf!"
    expect(string.swedify).to eq("Hällö Ölåf!")
  end

  it 'danify should return the right string' do
    string = "Hello Olaf!"
    expect(string.danify).to eq("Hællø Ølåf!")
  end

  it 'norwegify should return the right string' do
    string = "Hello Olaf!"
    expect(string.norwegify).to eq("Hællø Ølåf!")
  end

  it 'spanify should return the right string' do
    string = "I eat chicken!!!"
    expect(string.spanify).to eq("I eato chickeno!!!")
  end

  it 'frenchify should return the right string' do
    string = "I eat chicken. Hi hello how is it?"
    expect(string.frenchify).to eq("I euhhh eat euhhh chicken. euhhh i euhhh ello euhhh ow euhhh is euhhh it? euhhh")
  end

  it 'chinify should return the right string' do
    string = "hello, how are you? I love you."
    expect(string.chinify).to eq("herro, how are you? I rove you.")
  end

  it 'japanify should return the right string' do
    string = "I didn't do my homework."
    expect(string.japanify).to eq("You bring dishonor to whole family.")
  end

  it 'germanify should return the right string' do
    string = "The French are the worst!"
    expect(string.germanify).to eq("JA Zo, Ze French Are Ze Worst!")
  end

  it 'russify should return the right string' do
    string = "I want to suck your blood!"
    expect(string.russify).to eq("I vant to suck your blood!")
  end

  it 'dutchify should return the right string' do
    string = "Yes I Saw him yesterday!"
    expect(string.dutchify).to eq("Yesh I Shaw him yeshterday!")
  end

  it 'dutchify should return the right string' do
    string = "Yes I Saw him yesterday!"
    expect(string.dutchify).to eq("Yesh I Shaw him yeshterday!")
  end

  it 'irishify should return the right string' do
    string = "My dog is dead."
    expect(string.irishify).to eq("What's the craic? Me dog is dead.")
  end

  it 'portugify should return the right string' do
    string = "This is a sentence..."
    expect(string.portugify).to eq("This is ã sentenção...")
  end
  
  
end