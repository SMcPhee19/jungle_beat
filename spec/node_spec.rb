require 'rspec'
require './lib/node'

RSpec.describe 'nodes' do
  
  it 'has nodes' do
    node = Node.new("plop")
    
    require 'pry'; binding.pry
    expect(node.data).to eq("plop")
    expect(node.next_node).to be nil
  end
end