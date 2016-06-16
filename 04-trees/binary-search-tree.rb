require_relative 'tree'
require_relative 'tree-node'

class BinarySearchTree < Tree
  attr_reader :root

  def initialize(args = {})
    @root = args[:root]
    args.fetch(:items, 6).times { insert } if !@root
  end

  def insert(num=rand(0..50))
    @root ||= insert_recursive(@root, num)
  end

  def include?(num, node=@root)
  end

  private

  def insert_recursive(node, num)
  end
end
