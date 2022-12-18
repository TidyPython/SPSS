
* Dummy coding*

if female='female' gender_coding=1.
if female='male' gender_coding=0.
execute.



* Contrast coding*

if female='female' gender_coding=1.
if female='male' gender_coding=-1.
execute.

