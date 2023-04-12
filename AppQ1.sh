#!/bin/bash
echo "Wellcome to ATM Program"
read -p "Enter Your UserName" name
read -p "Enter Your Pin Code" pin

function registerBadLogin()
{
cat>> loginInfo<< EOF1
Status : Pin was Wrong
UserName : $name
EOF1
}
function registerLogin()
{
cat>> loginInfo<< EOF1
Status : login info was correct.
UserName : $name
the amount of withdraw : $amount
EOF1
}
if [[ $pin != "1234" ]]
then 
registerBadLogin
else
read -p "please enter the amount of withdraw" amount
if [[ $amount == 20 || $amount == 200 ]]
then
registerLogin
else 
echo "Withdraw from ATM only with denomination of 2$ or 200$ only"
echo "please enter correct amount"
fi
fi


