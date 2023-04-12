#!/bin/bash

function savetofile()
{
cat>> voteinfo << EOF1
--------------------------
Name: $name
Age: $age
City: $city
status: $output
French language: $FrenchStatus
--------------------------
EOF1
}

function isFrenchSpoken()
{
  read -p "is $name be able to speak French? Y/N " isFrench
  
  if [[ "$isFrench" == "Y" ]]
  then
  FrenchStatus="Yes, vote in Montreal is acceptable"
  else
  FrenchStatus="No"
  fi
  
}

function getPersonNames()
{

for((i=1;i<=3;i++ ))
do
  read -p "record $i enter name, age and city: " name age city
  
  if [[ $age < 18 ]]
  then
  output="$name is not eligible to caste the vote"
  elif [[ age < 20 ]]
  then
  output="$name is ready to register for vote"

  else 
  output="$name can register and caste the vote"
  
  fi
  
  
isFrenchSpoken  
savetofile
done
}
getPersonNames

