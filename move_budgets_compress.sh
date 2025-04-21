#!/bin/bash

# Define arrays for identifiers, project names, and number of bugs
identifiers=("Compress")
project_names=("commons-compress")
n_bugs=(47)

experiments_path="/Users/imarcal/Documents/Unesp/Experiments/PrimeiraGeracao/"
automation_path="/Users/imarcal/Documents/Unesp/Automacoes"

# Loop through each project
for ((i=0; i<${#identifiers[@]}; i++)); do
    
    for ((nb=1; nb<=${n_bugs[$i]}; nb++)); do
        
        cd "${experiments_path}/${project_names[$i]}/${project_names[$i]}_${nb}_buggy/"
		#mkdir -p "budgets_files" #-- uncomment for first execution
		# Move the file to the new folder and rename it to "budgets.txt"
		cp "${automation_path}/budgets.txt" "budgets.txt"
		#rm "budgets.txt"
    done
done
