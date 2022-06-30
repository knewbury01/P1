#replaces the path with the correct one
sed -i -e 's/\"uri\" : \"Driver.java\"/\"uri\" : \"driver\/Driver.java\"/g' debug-artifacts-java/java.sarif 
