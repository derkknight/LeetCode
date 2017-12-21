=begin
328
=end


# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
    #initialize
    current = head
    index = 1

    #initialize values
    odd_head = nil # keep track of first odd node
    even_head = nil # keep track of first even node
    odd_previous = nil # keep track of the last odd node
    even_previous = nil # keep track of the last even node
    
    while current != nil
        if index % 2 != 0
            # Link up the last odd node with this node
            if odd_previous != nil
                odd_previous.next = current
            end
            # Get the first odd node so we don't lose it
            if odd_head == nil
                odd_head = current
            end
            # Record that this is the last visited odd node
            odd_previous = current
        else
            # Link up the last even node with this node
            if even_previous != nil
                even_previous.next = current
            end
            # Get the first even node so we don't lose it
            if even_head == nil
                even_head = current
            end
            # Record that this is the last visited even node
            even_previous = current
        end
        # Clear the next node of this iteration's node to prevent any loops
        previous = current
        current = current.next
        previous.next = nil
        index += 1
    end

    #Arrange everything
    if odd_previous != nil or even_head != nil
        odd_previous.next = even_head
    end
    return odd_head
end