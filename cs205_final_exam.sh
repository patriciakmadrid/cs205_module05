# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like best_pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====

# Get the filename from the first positional paramter
filename=$1

# Use awk to calculate the total number fo Pokemon and store it ina  variable
total=$(awk 'END {print NR}' $filename)

# Use awk to caluculate the average HP and store it in a variable
hp_avg=$(awk '{sum += $3} END {print sum / NR}' $filename)

# Use awk to calculate the average Attack and store it in a variable
attack_avg=$(awk '{sum += $4} END {print sum / NR}' $filename)

# Display the Summart of Data
echo "===== SUMMARY OF DATA FILE ====="
echo "   Filename: $filename
echo "   Total Pokemon: $total
echo "   Avg. HP: $hp_avg
echo "   Avg. Attack: attack_avg
echo "===== END SUMMARY ====="
