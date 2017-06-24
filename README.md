# styleGuideOfGod
------------------

![hexagram of wisdom](https://gist.githubusercontent.com/TurboBasic/9dfd228781a46c7b7076ec56bc40d5ab/raw/03942052ba28c4dc483efcd0ebf4bfc6809ed0d0/hexagram3D.png) 

__the__ style guide God would use if He was a front-end developer








TLDR statement
-------------

TLDR; &mdash; you have been warned






# Content of the document
--------------------------


### 1. TLDR warning
Any document worth reading should have it. 


### 2. Content section of the document %)

#### 2.1. Content of Content section of document
Some meaningful text 

#### 2.2. Content of body of document
Another meaningful text 


### 3. Body of document 
The last piece of meaningful text 



Body of document starts here
---------------------------
Congratulations &mdash; you have started reading this piece of technical art!  You have earned about `120` bytes of intelligence so far &mdash; just go forth.



Naming conventions
-----------------

### General
* don't fear `longVariableNames`  &mdash; long term they are better (provided that they are informative)
* don't fear *vertical spacing* &mdash; add empty lines wherever there is a mentally separable code chunk
* actually not only vertical spacing matters but rather vertical rhytm i.e. interleaving of condensed and loose parts of code. Sublime Text Editor's document map feature will help you. Or zoom out in your editor to 10% and look at the code &mdash; if you use vertical spacing efficiently you'll should see the structure of you code very well




### HTML
* lowercase <__tags__>
* &lt;tag __attributename__="is lowercase as well">



#### BEM blocks
* use pascal case for __BlockNames__
````
<section class="PascalCaseAwesomeBlockName">
    
    <p class="PascalCaseAwesomeBlockName__textElement">text</p>
    <div class="OtherBlock">
      <p class="OtherBlock__element">
            content
      </p>
    </div>
</section>
````

unprocessed
````html
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



#### HTML Identifiers (`id`'s)
````html
<section id="id_Announcement">
</section>
````


### CSS
use BEM notation everywhere except of some isolated and documented cases according to best practices (TODO mention some)

#### BEM blocks
````css

  .PascalCaseAwesomeBlockName {
      background: DeepPink url('rainbow.jpg');
      color: SpringGreen;
    
      /* other incredibly awesome styling */
  }
````
yet

#### BEM elements
````css

  .Block__lowerCamelCaseElementName {
      background-color: Purple;
      background-image: url('rainbow.jpg');
      color: Cyan;
  
    /* other unintrusively hypnotic styling */
  }
````

#### DEM modifiers
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


