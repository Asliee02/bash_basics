#/bin/sh

function weekend_greet 
{
   echo "Enjoy the weekend, $1! You are feeling $2 today!"
}

function weekday_greet
{
   echo "Hello $1, keep pushing! You're feeling $2 today!"
}

echo "Please enter your name"
read name

echo "How are you feeling today?"
read mood

day=$(date | cut -d' ' -f1)

if [ $day = "Sat" ] || [ $day = "Sun" ]; then
   weekend_greet $name $mood
else
   weekday_greet $name $mood
fi

# exercise: Add a second argument to the function 
# and make it give a greeting based on the new 
# argument.