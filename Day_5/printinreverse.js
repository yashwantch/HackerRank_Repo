// Complete the reversePrint function below.

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     int data;
 *     SinglyLinkedListNode next;
 * }
 *
 */
function reversePrint(head) {
    
    
        
        var list = [];
         while(head!=null){
            list.push(head.data);
            head=head.next;
        }
        list.reverse();
        
        for(var str in list){
            console.log(list[str]);
        }


}