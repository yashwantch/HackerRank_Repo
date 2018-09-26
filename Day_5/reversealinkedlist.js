// Complete the reverse function below.

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     int data;
 *     SinglyLinkedListNode next;
 * }
 *
 */
function reverse(head) {
    
    var previousNode=null;
    var nextNode;
        while(head!=null)
        {
            nextNode=head.next;
            head.next=previousNode;
            previousNode=head;
            head=nextNode;
        }
        return previousNode;


}