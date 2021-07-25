#grep "[0-9][0-9][0-9]" *.*
#it  returns with minimum 3 digit number and more than 3 digits.
grep -o "[0-9][0-9][0-9]" *.*
#it returns 3 digit numbers if number id more than 3 then divide  into 3 (if 2 or 1 digit left igonres this digits  )
