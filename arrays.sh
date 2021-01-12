# This DOES work in the general case

# copy files from one directory to another
read -p "Enter the images directory: " inputdir
read -p "Enter the images directory: " outputdir

photos=("$inputdir"/*.jpg);

for file in "${photos[@]}"; do
     cp "$file" $outputdir/
done

# iterate over arrays
names=("Bob" "Peter" "$USER" "Big Bad John")
for name in "${names[@]}"; 
    do 
        echo "$name"; 
done
  