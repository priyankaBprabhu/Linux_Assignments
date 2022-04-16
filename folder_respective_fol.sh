touch abc.txt def.txt ghi.txt jkl.txt
for files in *.txt
do
foldername=`echo $files | awk -F. '{print $1}'`;
echo $files
echo $foldername
printf "\n";
if [ -d $foldername ]
then
        rm -r $foldername;
fi
mkdir -p $foldername
mv $files $foldername
done
