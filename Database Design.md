https://cognizantee.udemy.com/course/datamodeling/learn/lecture/6153882#overview



# ER diagram 
-diagram to represent the relation among entities, everything(object), we see around us is entity  

## cardinality
one to one- drives drives car 
one to many- a teacher to student 
many to many- managers to employee

## Diagram of cardinality


## Degree of Realtionship
uranary - student is friend of itsself  
        - person married to a person  
        - employee managing employee  


Binary - 
student -  attends - course  
spplier-supplies-items  

M-array- 
professor > project >student
## Entity set 
-total entity set is shown by double line
-Entity without primary key is k/a weak identity
        -always total participation


## Database normalization
Data Redundency less
Data Integration more 
 -No update inerstion and deletion anamolies
 -Easily extendable
 -Good performance 

 ## function depeendency

 A->B , B is functionally  dependent on A

 Enroll no | Name | adress 
 101 | Ravi | ABC
 102| Raj | ABC
 103 | Ravi | xyz

  ## Data Noramalisation 
  ### first normal form 
  * Atomic
  * only one attribute 
  * only range values

  ### second Normal form 

  *No partial dependency 
### third normal form
* 2NF  
* non prime dependency should not define non prime attribute 
* For every functional dependency   
X->A one of the following should be true 
    * X is a superkey
    * A is prime attribute
    * X->A is a trival functional dependency

