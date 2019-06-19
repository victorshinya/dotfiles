echo "Type in your full name"
read full_name

echo "Type in your email address" 
read email

git config --global user.name $full_name
git config --global user.email $email

echo "Awesome, allset 👌🏻"
