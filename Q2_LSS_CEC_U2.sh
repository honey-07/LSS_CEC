echo "Enter tempreature value : "
read value
echo "Enter conversion type 'f' for fahrenheit or 'c' for celsius : "
read choice
case "$choice" in
	"f") 
	f=$(expr \( $value \* 9 / 5 \) + 32)
	echo "FAHRENHEIT = " $f
	;;

	"c") 
	c=$(expr \( $value - 32 \) \* 5 / 9)
	echo "CELSIUS = " $c
	;;

*) echo "invalid choice"
;;
esac
