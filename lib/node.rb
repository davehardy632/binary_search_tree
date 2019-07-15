require 'pry'

class Node
  attr_reader :score, :movie_title
  attr_accessor :left, :right
  def initialize(score, movie_title)
    @score = score
    @movie_title = movie_title
    @right = nil
    @left = nil
  end

  def tail?
    @right.nil? && @left.nil?
  end


end
