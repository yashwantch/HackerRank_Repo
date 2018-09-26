// Complete the CompareLists function below.

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     int data;
 *     SinglyLinkedListNode next;
 * }
 *
 */
function CompareLists(llist1, llist2) {
    
    
     var res=false;
        

        while(llist1!=null && llist2!=null){
            
            if(llist1.data != llist2.data){
                res=false;
                break;
            }
            else{
                res=true;
            }
            llist1=llist1.next;
            llist2=llist2.next;
        }

        return res;



}