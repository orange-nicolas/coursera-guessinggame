#!/usr/bin/env bash
# File : guessinggames.sh

# Function to check if the guessed number is too high or too low
function level {
    if [[ $response -gt $nb ]]
    then echo "Trop grand" 
    fi
    if [[ $response -lt $nb ]]
        then echo "Trop petit" 
    fi
}

# Main script
nb=$(ls -1 | wc -l)
response=null
while [[ $response -ne $nb ]]; do
    echo "Entrez le nobre de fichier de ce repertoire"
    read response
    if [[ $response -eq $nb ]]
        then echo "Gagné"
        break
    fi
    level
    echo "Perdu allez on recommence"
done