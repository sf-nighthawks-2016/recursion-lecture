require 'pry'

class TreeNode
  attr_accessor :left, :right, :value
  def initialize(value, left = nil, right = nil)
    @value = value
    @right = right
    @left = left
  end
end

def build_random_tree(depth)
  return TreeNode.new(rand(0..50)) if depth == 1
  left = build_random_tree(depth - 1)
  right = build_random_tree(depth - 1)
  TreeNode.new(rand(0..50), left, right)
end

# print the tree in-order (left, then root, then right)
def in_order_traversal(tree)
end

# print the tree pre-order (root, then left, then right)
def pre_order_traversal(tree)
end

# print the tree post-order (left, then right, then root)
def post_order_traversal(tree)
end

tree = build_random_tree(3)
p tree
# binding.pry
# in_order_traversal(tree)
# pre_order_traversal(tree)
# post_order_traversal(tree)
