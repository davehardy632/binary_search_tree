require 'pry'

class BinarySearchTree
  attr_accessor :head
  def initialize
    @head = nil
  end

  def empty?
    head.nil?
  end

  def set_head(score, movie_title)
    self.head = Node.new(score, movie_title)
  end

  def traverse_tree(node, score, movie_title, counter = 1)
    if node.right == nil && node.left == nil && node.score > score
      node.right = Node.new(score, movie_title)
      counter
    elsif node.right == nil && node.left == nil && node.score < score
      node.left = Node.new(score, movie_title)
      counter
    elsif node.right == nil && node.left != nil && score > node.score
      node.right = Node.new(score, movie_title)
      counter
    elsif node.left == nil && node.right != nil && score < node.score
      node.left = Node.new(score, movie_title)
      counter
    elsif node.right != nil && node.left != nil && score > node.score
      traverse_tree(node.right, score, movie_title, counter += 1)
    elsif node.right != nil && node.left != nil && score < node.score
      traverse_tree(node.left, score, movie_title, counter += 1)
    end
  end


  def insert(score, movie_title)
    if empty?
      set_head(score, movie_title)
      0
    else
      traverse_tree(self.head, score, movie_title)
    end
  end
end
