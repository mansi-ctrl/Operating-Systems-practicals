#!/bin/sh

clear
filename="Items.txt" 
echo "Item Management"
echo "1 Add item"
echo "2 Update item"
echo "3 Delete item"
echo "4 Purchaseitem"
echo " 5 Exit"
echo "Enter choice: "
read choice

case "$choice" in
   "1") 
		touch $filename
		chmod u=rwx "$filename"
		itemcount=`expr $(< "$filename" wc -l) + 1`
		echo "Enter item name:"
		read itemname
		echo "Enter item price:"
		read itemprice
		echo "$itemname | $itemprice" >> $filename
		echo "Item \"$itemname\" with price Rs.$itemprice with code \"$itemcode\" added successfully. Here's the list of items!"
		cat -n "$filename"
   ;;
   "2") 
		echo "Below is the list of items. Select any item code to update it's details."
		cat -n "$filename"
		echo "Enter item code:"
		read itemcode
		itemcount=`expr $(< "$filename" wc -l) + 0`
		if [ $itemcount -ge $itemcode ]
		then
			echo "Enter item name:"
			read itemname
			echo "Enter item price:"
			read itemprice
			#item="$itemcode |$itemname | $itemprice"
			item="$itemname | $itemprice"
			echo $item
			sed -i "${itemcode}s/.*/$item/" "$filename"
			echo "Item with code \"$itemcode\" updated successfully. Here's the list of items!"
			cat -n "$filename"
		else
			echo "ERROR: Invalid item code"
		fi
   ;;
   "3") 
		echo "Below is the list of items. Select any item code to delete it."
		cat -n "$filename"
		echo "Enter item code:"
		read itemcode
		itemcount=`expr $(< "$filename" wc -l) + 0`
		if [ $itemcount -ge $itemcode ]
		then
			sed -i "${itemcode}d" "$filename"
			echo "Item with code \"$itemcode\" deleted successfully. Here's the updated list of items!"
			cat -n "$filename"
		else
			echo "ERROR: Invalid item code"
		fi
		
   ;;
   "4") 
		echo "Below is the list of items. Select any item code to buy it."
		cat -n "$filename"
		echo "Enter item code:"
		read itemcode
		itemcount=`expr $(< "$filename" wc -l) + 0`
		if [ $itemcount -ge $itemcode ]
		then
			echo "Proceeding to buy..."
			line=$(< $filename sed '$itemcode q;d')
			echo $line
			echo "Item is $item"
			IFS='| ' read -r -a array <<< "${line}"
			echo "${array[*]}"
			echo "Enter quantity:"
			read quantity
			if [ $quantity -gt 0  ]
			then 
				echo "Item name: $array[0]"
				echo "Item code: $itemcode"
				echo "Item price: $array[1]"
				cost=`expr $array[1] \* $quantity`
				echo "Total cost: Rs.$cost"
		else
			echo "ERROR: Invalid item code"
		fi
   ;;
   "5")
		
   ;;
esac

