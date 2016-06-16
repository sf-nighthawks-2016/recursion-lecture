require_relative '../tree'

describe Tree do
  context "random tree" do
    let(:tree) { Tree.new }

    it "has a root, which is a TreeNode" do
      expect(tree.root).to be_a TreeNode
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
    let(:tree) { Tree.new(root: root) }

    it "has the root we passed in" do
      expect(tree.root).to be root
    end

    it "has depth 2" do
      expect(tree.depth).to eq 2
    end

    it "can be printed in order" do
      expect(tree.in_order_traversal).to eq [3,5,10]
    end

    it "can be printed post order" do
      expect(tree.post_order_traversal).to eq [3,10,5]
    end

    it "can be printed pre order" do
      expect(tree.pre_order_traversal).to eq [5,3,10]
    end
  end

  context "specific large tree" do
    let(:root) do
      TreeNode.new(5,
        TreeNode.new(3,
          TreeNode.new(64,
            TreeNode.new(323),
            TreeNode.new(2)),
          TreeNode.new(24,
            TreeNode.new(1),
            TreeNode.new(7))
        ),
        TreeNode.new(10,
          TreeNode.new(4,
            TreeNode.new(23),
            TreeNode.new(5)),
          TreeNode.new(234,
            TreeNode.new(5),
            TreeNode.new(8))
        )
      )
    end
    let(:pre_order) { [5, 3, 64, 323, 2, 24, 1, 7, 10, 4, 23, 5, 234, 5, 8] }
    let(:in_order) { [323, 64, 2, 3, 1, 24, 7, 5, 23, 4, 5, 10, 5, 234, 8] }
    let(:post_order) { [323, 2, 64, 1, 7, 24, 3, 23, 5, 4, 5, 8, 234, 10, 5] }
    let(:tree) { Tree.new(root: root) }

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
  end
end
