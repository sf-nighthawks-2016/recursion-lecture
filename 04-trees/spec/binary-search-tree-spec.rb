require_relative '../binary-search-tree'

describe BinarySearchTree do
  context "random tree" do
    let(:tree) { BinarySearchTree.new }

    it "has a root, which is a TreeNode" do
      expect(tree.root).to be_a TreeNode
    end

    it "is a valid binary search tree" do
      # the in-order traversal should give a sorted list
      in_order = tree.in_order_traversal
      expect(in_order.sort).to eq in_order
    end
  end

  # the string that will match the output from a traversal, based on given array
  def stringify(arr)
    arr.map { |item| item.to_s + "\n" }.join
  end


  context "specific small tree" do
    let(:root) do
      TreeNode.new(5, TreeNode.new(3), TreeNode.new(10))
    end
    let(:tree) { BinarySearchTree.new(root: root) }

    it "has depth 2" do
      expect(tree.depth).to eq 2
    end

    it "can find the root node" do
      expect(tree.include? 5).to be true
    end

    it "can find the left child" do
      expect(tree.include? 3).to be true
    end

    it "can find the right child" do
      expect(tree.include? 10).to be true
    end

    it "correctly returns false for a number smaller than all" do
      expect(tree.include? 1).to be false
    end

    it "correctly returns false for a number between left and root" do
      expect(tree.include? 4).to be false
    end

    it "correctly returns false for a number between root and right" do
      expect(tree.include? 7).to be false
    end

    it "correctly returns false for a number larger than all" do
      expect(tree.include? 14).to be false
    end
  end

  context "specific large tree" do
    let(:root) do
      TreeNode.new(24,
        TreeNode.new(9,
          TreeNode.new(4,
            TreeNode.new(2),
            TreeNode.new(7)),
          TreeNode.new(14,
            TreeNode.new(11),
            TreeNode.new(17))
        ),
        TreeNode.new(143,
          TreeNode.new(34,
            TreeNode.new(27),
            TreeNode.new(38)),
          TreeNode.new(234,
            TreeNode.new(164),
            TreeNode.new(236))
        )
      )
    end

    let(:in_order) do
      [2, 4, 7, 9, 11, 14, 17, 24, 27, 34, 38, 143, 164, 234, 236]
    end

    let(:pre_order) do
      [24, 9, 4, 2, 7, 14, 11, 17, 143, 34, 27, 38, 234, 164, 236]
    end

    let(:post_order) do
      [2, 7, 4, 11, 17, 14, 9, 27, 38, 34, 164, 236, 234, 143, 24]
    end

    let(:tree) { BinarySearchTree.new(root: root) }

    it "has the root we passed in" do
      expect(tree.root).to be root
    end

    it "has depth 4" do
      expect(tree.depth).to eq 4
    end

    it "can be printed in order" do
      expect(tree.in_order_traversal).to eq in_order
    end

    it "can be printed post order" do
      expect(tree.post_order_traversal).to eq post_order
    end

    it "can be printed pre order" do
      expect(tree.pre_order_traversal).to eq pre_order
    end

    it "correctly returns true for a number on a middle level" do
      expect(tree.include? 34).to be true
    end

    it "correctly returns true for a leaf node" do
      expect(tree.include? 11).to be true
    end

    it "correctly returns false for a number not in there" do
      expect(tree.include? 19).to be false
    end
  end
end
