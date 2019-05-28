function enablebutton()
{
 if(b1 && b2[0] && b3[0]) {
	 
	 document.getElementById("btn1").disabled=false;
 }	
 else {
	 
	 document.getElementById("btn1").disabled=true;
	 
 }

}

function enableloginbutton()
{
 if( b2[1] && b3[1]) {
	 
	 document.getElementById("btn2").disabled=false;
 }	
 else {
	 
	 document.getElementById("btn2").disabled=true;
	 
 }

}


var b1=false;
var b2 = [2];
b2[0]=false;
b2[1]=false;
var b3 = [2];
b3[0]=false;
b3[1]=false;
function namevalidation() {

	 			var fname = document.getElementById("name").value;
	 			
                if (fname == "") {
                	document.getElementById("result").innerHTML = "cannot be empty";
                	b1=false;
                	enablebutton();
                }
                else {
                	
                	
                	document.getElementById("result").innerHTML = "";
                	b1=true;
                	 enablebutton();
                	//do your stuff.
                }
            }
 
 
 function passwordvalidation(email,lable,check) {

		var fname = document.getElementById(email).value;
     if (fname == "") {
     	document.getElementById(lable).innerHTML = "cannot be empty";
     	if(check==0) {
     	b2[0]=false;
    	enablebutton();
     	}
     	if(check==1) {
     		b2[1]=false;
     		enableloginbutton();
     		}
     }
     else {
    	 document.getElementById(lable).innerHTML = "";
    	 if(check==0) {
    	     	b2[0]=true;
    	    	enablebutton();
    	     	}
    	     	if(check==1) {
    	     		b2[1]=true;
    	     		enableloginbutton();
    	     		}
    	 
    	         //do your stuff.
     }
 }
        
 function emailvalidation(email, label,check) {
	 
	 
	 var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	 
	 var fname = document.getElementById(email).value;
		
     if (fname == "") {
     	document.getElementById(label).innerHTML = "cannot be empty";
     	if(check==0) {
         	b3[0]=false;
        	enablebutton();
         	}
         	if(check==1) {
         		b3[1]=false;
         		enableloginbutton();
         		}
     }
     else {
    	 if(fname.match(mailformat)) {
    		 
    		 document.getElementById(label).innerHTML = "";
    		
    		 if(check==0) {
    	         	b3[0]=true;
    	        	enablebutton();
    	         	}
    	         	if(check==1) {
    	         		b3[1]=true;
    	         		enableloginbutton();
    	         		}
    		
    		 
    	 }//if
    	 else {	document.getElementById(label).innerHTML = "invalid email";
    	 
    	 if(check==0) {
          	b3[0]=false;
         	enablebutton();
          	}
          	if(check==1) {
          		b3[1]=false;
          		enableloginbutton();
          		}
    	 }
    	 
     }//else
 }
 


	