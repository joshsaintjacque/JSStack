require_relative 'stack_node'

class JSStack
  attr_accessor :top

  ##
  # Creates a new stack with an optional first item +data+.
  def initialize(data=nil)
    @top = StackNode.new data unless data.nil?
    @top ||= nil
  end

  ##
  # Pushes the +data+ value provided on to the +top+ of the stack.
  def push(data)
    node = StackNode.new data
    node.next = @top
    @top = node
  end

  ##
  # Pops the +top+ value off of the stack and returns it.
  def pop
    return if @top.nil?
    popped_top = @top.data
    @top = @top.next
    popped_top
  end

  ##
  # Returns the +top+ value off of the stack without removing it.
  def peek
    @top.nil? ? nil : @top.data
  end

  ##
  # Returns a Boolean indicating whether the stack is empty.
  def empty?
    @top.nil?
  end
end