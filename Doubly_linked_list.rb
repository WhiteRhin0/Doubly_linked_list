class Node
  attr_accessor :data, :prev, :next

  def initialize(prev_one, data, next_one)
    @prev = prev_one
    @data = data
    @next = next_one
  end
end

class DoubleLinkedList

  def initialize(data)
    @head = Node.new(nil, data, nil)
  end

  def add(data)
    current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(current, data, nil)
  end

  def del(id)
    current = @head
    id.times do
      current = current.next
    end
    current.next.prev = current.prev
    current.prev.next = current.next
  end

  def get(id)
    current = @head
    id.times do
      current = current.next
    end
    current.data
  end

  def return_list
    returnes = []
    current = @head
    while current.next != nil
      returnes << current.data
      current = current.next
    end
    returnes << current.data
  end

end



