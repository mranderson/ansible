#!/bin/bash

echo -n "Enter the name of a state: "
read STATE

echo -n "The capital of $STATE is "

case $STATE in

	Georgia)
		echo "Atlanta"
		;;

	Virginia)
		echo "Richmond"
		;;

	Texas)
		echo "Austin"
		;;

	Maine)
		echo "Augusta"
		;;

	*)
		echo "Not in my database"
		;;
esac
