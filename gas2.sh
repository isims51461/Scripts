#!/bin.bash

NAME=Ian

echo " Welcome to $NAME's Gas Station "

echo " Would you like a car was today y/n "

read CW

if [ $CW = n ] 

then 

echo " Please enter your card for for gas "

echo " Debit or Credit (d-debit, c-credit) "

read CA

elif [ $CA = d ]

echo " Please enter your four digit PIN # "
read PIN1
#elif [ $PIN1 != "xxxx" ]
echo " Thief "
#exit
#fi
#elif [ $PIN1 = "xxxx" ]
echo " Please begin pumping your gas " 
#exit 10
#fi

elif [ $CA = c ]
echo " Please enter your 5 digit zip code " 
read ZIP1
#elif [ $ZIP1 = "xxxxx" ]
echo "Please begin pumping your gas "
#exit 11
#fi
#elif [ $ZIP1 != "xxxxx" ]
echo " Thief "
#exit
#fi

elif [ $CW = y ] 

echo Would you like a deluxe is 8.00 or basic is  5.00 
(de-deluxe, b-basic) "

read db

elif [ $db = de ]
echo " That will be 8.00 plus the price of your gas "
echo " Will you be paying Debit or Credit (Debit = Deb, Credit = CR ) "
Read GasandWash
elif [ GasandWash = Deb ]
echo " Please insert your card "
echo " Please enter your 4 digit pin # "
Read PIN
#elif [ $PIN != "xxxx" ]  
echo " Thief "
#exit 12
#fi
#elif [ $PIN = "xxxx" ]
echo " Please begin pumping your gas. Enjoy your Deluxe Car Wash "
#exit 10
#fi
elif [ $GasandWash = CR ]
echo " Please enter your 5 digit zip-code "
read zip 

#elif [ $zip != "xxxxx" ]
echo " Thief "
#exit 14
#fi

#elif [ $zip = "xxxxx" ]
echo " Please begin pumpng your gas. Enjoy your Deluxe car wash "
#exit 14
#fi

elif [ $db = b ]

echo " That will be 5.00 plus the price of your gas "
echo " Will you be paying Debit or Credit (Debit = Deb, Credit = CR ) "
Read GasandWash
elif [ $GasandWash = Deb ]
echo " Please insert your card "
echo " Please enter your 4 digit pin # "
Read PIN
#elif [ $PIN != "xxxx" ]
#echo " Thief "
#exit 12
#fi
#elif [ $PIN = "xxxx" ]
echo " Please begin pumping your gas. Enjoy your Basic Car Wash "
#exit 10
#fi
elif [ $GasandWash = CR ]
echo " Please enter your 5 digit zip-code "
read zip

#elif [ $zip != "xxxxx" ]
echo " Thief "
#exit 14
#fi

#elif [ $zip = "xxxxx" ]
echo " Please begin pumpng your gas. Enjoy your Basic Car wash "
#exit 23
fi

