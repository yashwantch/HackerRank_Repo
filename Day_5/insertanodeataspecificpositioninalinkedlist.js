// Complete the insertNodeAtPosition function below.

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     int data;
 *     SinglyLinkedListNode next;
 * }
 *
 */
function insertNodeAtPosition(head, data, position) {

    const node = new SinglyLinkedListNode(data);
        
        if(head==null)
        {
            head=node;
            return head;
            
        }else{
            var current = head;
            var i=0;
            while(i!=(position-1)){
                current = current.next;
                
                i++;
            }
                  node.next=current.next;
                  
                current.next=node;
                  
            return head;
        }
        

    
}