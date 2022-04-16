read -p "enter the name of directory " n
if [ -d $n ]
then
	echo "Folder already exists"
else
	echo "create the folder"
	mkdir -p $n
fi
