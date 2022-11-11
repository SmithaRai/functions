#!/bin/bash -x

celsius()
{
   return $(( $f-32*5/9 ))
}

fahreinheit()
{
   return $(($c*9/5+ 32 ))
}


echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read choice

case $choice in

    1)
     echo "enter temperature(C): "
     read c
     fahreinheit $c
     ;;

    2)
      echo "enter temperature(F): "
     read f
     celsius $f
     ;;

esac
