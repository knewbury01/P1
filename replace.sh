#replaces the path with the correct one
echo "fixing up $1"
sed -i -e 's/\"uri\" : \"Driver.java\"/\"uri\" : \"driver\/Driver.java\"/g' $1
