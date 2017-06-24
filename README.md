styleGuideOfGod
==================
style guide God would use if He was a front-end developer

TLDR;

Content of the document
--------------------------
### 1. TLDR warning
### 2. Content section of the document %)
#### 2.1. Content of Content section of document
Some meaningful text 

#### 2.2. Content of body of document
Another meaningful text 

### 3. Body of document 
The last piece of meaningful text 



Naming conventions
-----------------

### General

* don't fear `longVariableNames`  &mdash; long term they are better (provided that they are informative)
* don't fear *vertical spacing* &mdash; add empty lines wherever there is a mentally separable code chunk
* actually not only vertical spacing matters but rather vertical rhytm i.e. interleaving of condensed and loose parts of code. Sublime Text Editor's document map feature will help you. Or zoom out in your editor to 10% and look at the code &mdash; if you use vertical spacing efficiently you'll should see the structure of you code very well


### HTML

* lowercase <__tags__>
* &lt;tag __attributename__="is lowercase as well">




#### Block
````html

<section id="id_Announcement">
</section>


<section class="PascalCaseAwesomeBlockName">

    <!-- ... content ... -->
    
    <div class="OtherBlock">
    
      <p class="OtherBlock__element">
      
        <!-- ... content ... -->
        
      </p>
      
      <ul class="OtherBlock__anotherElement">
      
        <!-- ... content ... -->
        
      </ul>  
      
      <!-- ... content ... -->
      
    </div>
    
    <!-- ... content ... -->
    
</section>



<section class="Block">
     <p class="Block__camelCaseElementName">
     
          <!-- ... content ... -->
      
     </p>  
</section>



<div class="Block Block--camelCaseModifier">

  <!-- ... content ... -->
  
</div>



<section class="Block">
     <ul class="Block__element Block__element--camelCaseModifier">
     
          <!-- ... content ... -->
          
     </ul>  
</section>
````



### CSS
use BEM notation everywhere except of some isolated and documented cases according to best practices (TODO mention some)

#### Block
````css

  .PascalCaseAwesomeBlockName {
      background: DeepPink url('rainbow.jpg');
      color: SpringGreen;
    
      /* other incredibly awesome styling */
  }
````
yet

#### Element
````css

  .Block__lowerCamelCaseElementName {
      background-color: Purple;
      background-image: url('rainbow.jpg');
      color: Cyan;
  
    /* other unintrusively hypnotic styling */
  }
````

#### Modifier
````css

  .Block--camelCaseModifier {
      display: none;  
      /* other unintrusively hypnotic styling */
  }

  .Block__element--camelCaseModifier {
      display: none;
    
      /* other crafted design masterpieces */
  }
````
