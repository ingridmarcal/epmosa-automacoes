#!/bin/bash

identifiers=("Compress")
project_names=("commons-compress")
n_bugs=(47)
n_versions=(1 2 3 4 5)

experiments_path="/Users/imarcal/Documents/Unesp/Experiments/PrimeiraGeracao/"
defects4j_path="/Users/imarcal/Documents/Unesp/defects4j/framework/bin/defects4j"


for ((i=0; i<${#identifiers[@]}; i++)); do
    # Create both local and target directories
    mkdir -p "${project_names[$i]}"
    mkdir -p "${experiments_path}/${project_names[$i]}"

    for ((nb=1; nb<=${n_bugs[$i]}; nb++)); do
        cd "${experiments_path}/${project_names[$i]}"
        perl "${defects4j_path}" checkout -p "${identifiers[$i]}" -v "${nb}b" -w "${experiments_path}/${project_names[$i]}/${project_names[$i]}_${nb}_buggy"
        cd ../
    done
done