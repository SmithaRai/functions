
#!/bin/bash -x



Prime()
{
  for(( i=2; i<=$(($n/2)); i++ ))
   do
    if [ $(($n%$i)) -eq 0 ]
    then
     echo "$n not prime number"
     exit
    fi
   done
   echo "$n is prime number"
}

Prime_palindrome()
{
   count=0
   reverse=0
   temp=$n

   for(( i=1; i<=$temp; i++ ))
    do
      if [ $(($temp%$i)) -eq 0 ]
       then
        count=$((count+1))
      fi
    done
   if [ $count -eq 2 ]
    then 
      while [ $temp -gt 0 ]
      do 
        reverse=$(($(($reverse*10))+$(($temp%10))))
        temp=$(($temp/10))
      done
    if [ $reverse -eq $n ]
     then
       echo "given number is prime also palindrome number"
   else
      echo "given number is not prime palindrome number"
   fi
else
  echo "given number not prime palindrome number"
 
   fi 
}

echo "enter number : "
read n
 
Prime

Prime_palindrome
