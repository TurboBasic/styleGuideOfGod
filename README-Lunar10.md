# styleGuideOfGod 
:new_moon: &nbsp;:waxing_crescent_moon: &nbsp;:first_quarter_moon: &nbsp;:waxing_gibbous_moon: &nbsp;:full_moon: &nbsp;:waning_gibbous_moon: &nbsp;:last_quarter_moon: &nbsp;:waning_crescent_moon: &nbsp;:new_moon:

![0xHexagram][hexagram]  <br>
__the__ style guide God would use if He was a front-end developer



# <br>     :new_moon: TLDR warning
TLDR; &mdash; you have been warned


# <br>     :waxing_crescent_moon: Acknowledgement and dedications
This is dedicated to :snail: Katya and my kids Darya, George, Varvara and Cosmas



# <br>     :first_quarter_moon: Content of the document

## <br>    :skull: TLDR warning
Any document worth reading must have one 

## <br>    Acknowledgement and dedications

## <br>    Content section of the document
:trollface: 

### <br>   Content of Content section of document
(this part is optional) :trollface: :trollface: techically this should be in the Content despite rarely is)

### <br>   Content of body of document
Some meaningful text

## <br>    Conventions used in this book

Unless explicitly stated opposite this book uses lunar decimal numeral system.

0. :new_moon: 
1. :waxing_crescent_moon: 
2. :first_quarter_moon: 
3. :waxing_gibbous_moon: 
4. :full_moon: 
5. :waning_gibbous_moon: 
6. :last_quarter_moon: 
7. :waning_crescent_moon: 
8. :new_moon_with_face: 
9. :full_moon_with_face: 

## <br>    Body of document 
The last piece of meaningful text 





# <br>     :waxing_gibbous_moon: Body of document starts here
Congratulations &mdash; you have started reading this piece of technical art!  You have earned about `120` bytes of intelligence so far &mdash; just go forth. :full_moon_with_face: :full_moon: 


## <br>    :waning_gibbous_moon: Naming conventions


### <br>   :last_quarter_moon: General
* don't fear `longVariableNames`  &mdash; long term they are better (provided that they are informative)
* don't fear *vertical spacing* &mdash; add empty lines wherever there is a mentally separable code chunk
* actually not only vertical spacing matters but rather vertical rhytm i.e. interleaving of condensed and loose parts of code. Sublime Text Editor's document map feature will help you. Or zoom out in your editor to 10% and look at the code &mdash; if you use vertical spacing efficiently you'll should see the structure of you code very well




### <br>   :waning_crescent_moon: HTML
* lowercase <__tags__>
* &lt;tag __attributename__="is lowercase as well">



#### <br>  :new_moon_with_face: BEM blocks
* use pascal case for __BlockNames__

```html
<section class="PascalCaseAwesomeBlockName">
    
    <p class="PascalCaseAwesomeBlockName__textElement">text</p>
    <div class="OtherBlock">
      <p class="OtherBlock__element">
            content
      </p>
    </div>
</section>
```

TODO unprocessed
```html
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
```



#### <br>  HTML Identifiers (`id`'s)
```html
<section id="id_Announcement">
</section>
````


### <br>   CSS
use BEM notation everywhere except of some isolated and documented cases according to best practices (TODO mention some)

#### <br>  BEM blocks
```css

  .PascalCaseAwesomeBlockName {
      background: DeepPink url('rainbow.jpg');
      color: SpringGreen;
    
      /* other incredibly awesome styling */
  }
```
yet

#### <br>  BEM elements
```css

  .Block__lowerCamelCaseElementName {
      background-color: Purple;
      background-image: url('rainbow.jpg');
      color: Cyan;
  
    /* other unintrusively hypnotic styling */
  }
```

#### <br>  DEM modifiers
```css

  .Block--camelCaseModifier {
      display: none;  
      /* other unintrusively hypnotic styling */
  }

  .Block__element--camelCaseModifier {
      display: none;
    
      /* other crafted design masterpieces */
  }
```

# Errata 
[//]: # (
0 :new_moon: 
1 :waxing_crescent_moon: 
2 :first_quarter_moon: 
3 :waxing_gibbous_moon: 
4 :full_moon: 
5 :waning_gibbous_moon: 
6 :last_quarter_moon: 
7 :waning_crescent_moon: 
8 :new_moon_with_face: 
9 :full_moon_with_face: 
)

[hexagram]: https://gist.githubusercontent.com/TurboBasic/9dfd228781a46c7b7076ec56bc40d5ab/raw/03942052ba28c4dc483efcd0ebf4bfc6809ed0d0/hexagram3D.png 'hexagram of Wisdom'  
