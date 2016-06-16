require_relative 'tree'
require_relative 'binary-search-tree'
require 'pry'

tree = Tree.new
p tree
# binding.pry
tree.in_order_traversal
puts
tree.pre_order_traversal
puts
tree.post_order_traversal



tree = BinarySearchTree.new({:items, 3})
binding.pry
p tree
