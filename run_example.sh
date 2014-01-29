clear
echo "" > EXAMPLE.md
MAX_IDX=13

for i in $(seq 1 $MAX_IDX); do
    cat calibrations/$i.txt | zoidberg | tee -a EXAMPLE.md
    if [[ $i != $MAX_IDX ]]; then
        echo -e "\n***\n" | tee -a EXAMPLE.md
    fi
done
