class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

def reverse_list(list, previous=nil)

  current = list.next_node
  list.next_node = previous

  if current
    reverse_list(current, list)
  else
    list
  end

end

def print_values(list_node)

  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end

end

def detect_loop(list_node)

  hare = list_node
  tortoise = list_node
  
  while true

    if hare == nil
      puts "No loop found."
      return
    end

    hare = hare.next_node

    if hare == nil
      puts "No loop found."
      return
    end

    hare = hare.next_node
    tortoise = tortoise.next_node

    if hare == tortoise
      puts "Loop found!"
      return
    end

  end

end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# Create an infinite loop
# node1.next_node = node3

detect_loop(node3)