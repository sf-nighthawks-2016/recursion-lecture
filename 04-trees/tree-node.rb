class TreeNode
  attr_accessor :left, :right, :value
  def initialize(value, left = nil, right = nil)
    @value = value
    @right = right
    @left = left
  end
end
