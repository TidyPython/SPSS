if female='female' gender_coding=-1.
if female='male' gender_coding=1.
execute.

compute socst_positive_SD= socst-(52.40+10.736).
compute socst_negative_SD= socst-(52.40-10.736).
execute.