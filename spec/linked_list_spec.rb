require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe 'linked_list' do
  it 'has list' do
    list = LinkedList.new
    
    
    expect(list.head).to be nil
    expect(list.append("doop")).to eq("doop")
    expect(list.head.next_node).to be nil
    expect(list.head.data).to eq("doop")
    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")
    # require 'pry'; binding.pry
  end


end