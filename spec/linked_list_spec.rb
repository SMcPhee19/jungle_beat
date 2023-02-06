require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe 'linked_list' do 
  let(:list) {LinkedList.new}

  it 'has list' do
    expect(list.head).to be nil
    expect(list.append("doop")).to eq("doop")
    expect(list.head.next_node).to be nil
    expect(list.head.data).to eq("doop")
    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")
  end

  it 'has multiple nodes' do
    expect(list.head).to be nil
    expect(list.append("doop")).to eq("doop")
    expect(list.head.next_node).to be nil

    list.append("deep")

    expect(list.head.next_node).to be_a Node
    expect(list.head.next_node.data).to eq("deep")
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end

  it 'can insert' do
    list.append("doop")
    list.append("deep")
    list.append("woo")
    
    expect(list.insert(1, "foo")).to eq("foo")
    expect(list.to_string).to eq("doop foo deep woo")
  end

  it 'can find' do
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blob")

    expect(list.find(2, 1)).to eq ("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it 'can include?' do
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blob")
    
    expect(list.includes?("deep")).to be true 
    expect(list.includes?("dep")).to be false
  end

  it 'can pop' do
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.pop).to eq("blop")
    expect(list.pop).to eq("shu")
    expect(list.to_string).to eq("deep woo shi")
  end

end