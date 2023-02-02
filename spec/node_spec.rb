require 'rspec'
require './lib/node'

Rspec.describe 'node' do
  it 'has nodes' do
    node = Node.new("plop")
    node.data
    node.next node

    expect(Node.new).to eq ("plop")
    expect(node.data) to be "plop"
    expect(node.data) to be nil 
  end
  





end