class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end
  
  def print_forward(node)
    while node != nil
      puts node.value
      node = node.next
    end
  end
  
  def reverse(node)
    first = node
    second = node.next
    current = node.next
    first.next = nil
    while second != nil
      second = second.next
      current.next = first
      first = current
      current = second    
    end
    first
  end
  
  def print_reverse(node)
    print_forward(reverse(node))
  end
  
end

c = Node.new('pertama')
b = Node.new('kedua')
a = Node.new('ketiga')
a.next = b
b.next = c

puts b.print_forward(a)

#output inputan pertama, akan menjadi head
#ketiga kedua pertama


