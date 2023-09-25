echo "Extracting only the names from demo.txt file and saving them in a new file called name.txt"
cut -d "," -f 1 demo.txt > name.txt
cat < name.txt

echo "Arranging the names in alphabetical order of demo.txt file and saving the sorted list to a file named sorted_names.txt"
sort demo.txt > sorted_names.txt
cat < sorted_names.txt

echo "greping all the names in the sorted_names.txt file that start with the letter 'A' and saving them to a file named names_starting_with_a.txt."
grep '^A' sorted_names.txt > names_starting_with_A.txt
cat < names_starting_with_A.txt

echo "Combining the names_starting_with_a.txt file with another file named special_names.txt  which contains additional names \n and saving the result as combined_names.txt."
cat names_starting_with_A.txt special_names.txt > combined_names.txt
cat < combined_names.txt

echo "Replacing all occurrences of 'Alice' with 'Alicia' in the combined_names.txt file and saving the updated file"
sed -i 's/Alice/Alicia/g' combined_names.txt
cat < combined_names.txt

echo "Calculating the average test score for all students in the original data file and displaying the result on the terminal."
awk -F ',' '{
	sum=sum+ $2;
	c++
}
END{
	print "Average Score: " sum/c
}' demo.txt

echo  "Displayung the first five lines of the combined_names.txt file."
head -n 5 combined_names.txt

echo  "Displayung the first five lines of the combined_names.txt file."
tail -n 5 combined_names.txt

