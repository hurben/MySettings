cat profile.list  | while read file_name
do
	len_file_name=${#file_name}
	firstchar=${file_name:0:1}
	new_file_name=${file_name:1:$len_file_name}

	if [ $firstchar == "." ];then

		if mv $file_name $new_file_name; then
			echo "Converting . to none"
		else
			echo "We found that the file does not have <.>"
			mv $new_file_name $file_name
			echo $new_file_name $file_name
		fi
	fi
done
