// Complete the removeDuplicates function below.

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     int data;
 *     SinglyLinkedListNode next;
 * }
 *
 */
function removeDuplicates(head) {
    
    
    var ptr1 = null, ptr2 = null, dup = null; 
        ptr1 = head; 
  
        while (ptr1 != null && ptr1.next != null) { 
            ptr2 = ptr1; 
  
            while (ptr2.next != null) { 
  
                if (ptr1.data == ptr2.next.data) { 
  
                    dup = ptr2.next; 
                    ptr2.next = ptr2.next.next; 
                } else  { 
                    ptr2 = ptr2.next; 
                } 
            } 
            ptr1 = ptr1.next; 
        } 
        return head;


}