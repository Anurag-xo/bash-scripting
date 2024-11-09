#!/bin/bash

read -p "Enter the nume of your car brand: " car

case $car in
	Tesla)
		echo -n "${car}'s car factory is in the USA."
		;;
	
	BMW | Mercedes | Audi | Porsche)
		echo -n "${car}'s car factory is in Germany."
		;;
	Toyota | Mazda | Mitsubhishi | Subaru)
		echo -n "${car}'s car factroy is in Japan."
		;;
	*)
		echo -n "${car} is an unknown car brand"
		;;
esac

