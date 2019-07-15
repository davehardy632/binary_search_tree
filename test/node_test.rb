require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test

  def setup
    @node = Node.new(25, "movie title")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_attributes
    assert_equal 25, @node.score
    assert_equal "movie title", @node.movie_title
    assert_nil @node.left
    assert_nil @node.right
    assert_equal true, @node.tail?
  end

end
