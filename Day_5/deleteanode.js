// Complete the deleteNode function below.

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     int data;
 *     SinglyLinkedListNode next;
 * }
 *
 */
function deleteNode(head, position) {
    
    
    var current = head;
        if(position==0)
        {
            head=current.next;
            return head;
        }
        else{
        var i=0;
            while(i!=(position-1)){
                current = current.next;
                
                i++;
            }
                current.next = current.next.next;
                  
            return head;
        }


}