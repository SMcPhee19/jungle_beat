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

    # require 'pry'; binding.pry

  end

  it 'can insert' do
    list.append("doop")
    list.append("deep")
    list.append("woo")
    require 'pry'; binding.pry

    expect(list.insert(1, "foo")).to eq("foo")
    expect(list.to_string).to eq("doop foo deep woo")

  end


end