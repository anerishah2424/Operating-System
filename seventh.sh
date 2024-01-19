while true 
do
	echo"----operations----"
	echo"1 This month"
	echo"2 Today"
        echo"3 currently logged user"
	echo"4 username at specific coordinates"
 	echo"5 terminal number"
	echo"q Exit"
	read -p "Enter your choice: " operation
	echo ""
	case $operation in 
		1)
		cal
		;;
		2)
		date
		;;
		3)
		echo Currently logged in:
		who;;
		4) read -p"enter coordinates " x y 
		tput cup $x $y
		whoami
		;;
		5)
		echo "terminal Number: "
		tty;; 
		"q")
		exit;;
		*)
		echo "invalid Input";;
esac
echo ""
done
