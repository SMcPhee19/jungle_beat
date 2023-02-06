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
    expect(jb.append("deep doo dit")).to eq("deep doo dit")
  end
  
  it 'can count' do
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    require 'pry'; binding.pry
    expect(jb.count).to eq(6)
  end
    



















end