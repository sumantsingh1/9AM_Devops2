#!/bin/bash

# Ask user for username and password
read -p "Enter your username: " username
read -p "Enter your password: " password


# Check if password is empty
if [ -z "$password" ]; then
  echo "❌ password cannot be empty."
  exit 1
fi

# Check password much contain one uppercase letter,one lowercase letter, one number and only alphanumeric
if [[ "$password" =~ [a-z] ]] && 
   [[ "$password" =~ [A-Z] ]] && 
   [[ "$password" =~ [0-9] ]] && 
   [[ "$password" =~ ^[A-Za-z0-9] ]]; then

  echo "✅ Valid password: $password"
else
  echo "❌ Invalid password. It must be UPPERCASE letters,lowercase letter ,number only."
fi

