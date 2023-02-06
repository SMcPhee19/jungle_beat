require 'rspec'
require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe 'jungle_beat' do 
  let(:jb) {JungleBeat.new}
  
  it 'has list' do
    expect(jb.list).to be_a(LinkedList)
  end

  it 'can append' do
    jb.append("deep doo ditt")
    expect(jb.append("deep doo ditt")).to eq(3) ## changed to expect the numerical value instead of the string that iteration 3 wanted
  end
  
  it 'can count' do
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    expect(jb.count).to eq(6)
  end

  it 'can play' do
    jb.append("deep doo ditt woo hoo shu")
    jb.play
  end

  it 'can prepend' do

    expect(jb.prepend("tee tee tee Mississippi")).to eq(3)
  end

  it 'can all' do
    jb.append("tee tee tee deep")
    expect(jb.all).to eq("tee tee tee deep")
  end

  it 'can reset rate' do
    expect(jb.reset_rate).to eq(500)
  end

  it 'can reset voice' do
    expect(jb.reset_voice).to eq("Samantha")
  end
  it 'can change rate' do
    expect(jb.rate).to eq(500)
    jb.rate = 100
    expect(jb.rate).to eq(100)
  end

  it 'can change voice' do
    expect(jb.voice).to eq("Samantha")
    jb.voice = "Daniel"
    expect(jb.voice).to eq("Daniel")
  end

end