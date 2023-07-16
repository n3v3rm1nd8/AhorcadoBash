#!/bin/bash
green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
turquoise="\e[0;36m\033[1m"

data=()

while true
/usr/bin/clear
do
        echo "        __________      "
        echo "        |         |     "
        echo "        |         |     "
        echo "      _/_\_       |     "
        echo "       |_|        |     "
        echo "        |         |     "
        echo "     ---|---      |     "
        echo "        |         |     "
        echo "        |         |     "
        echo "       / \        |     "
        echo "      /   \       |     "
        echo "                  |     "
        echo "     _____________|_____"
        echo -e "\n------------------------------------------------------------------------------------------------------------"
        echo -e "| ${purple}1.${end}${yellow} Enter the word or phrase, without any strange characters, for example: 'dog' or 'my dog is wonderful'${end} |"
        echo -e "| ${purple}2.${end}${yellow} Find the previously written word or phrase${end}                                                            |"
        echo -e "| ${purple}3.${end}${yellow} Exit${end}                                                                                                  |"
        echo -e "------------------------------------------------------------------------------------------------------------\n"
        echo -e "${blue}Choose an option (${end}${purple}1${end}${blue},${end}${purple}2${end}${blue},${end}${purple}3${end}${blue}):${end}"
        read option
        case $option in
        1)
                /usr/bin/clear
                while [ "$enter" == "" ]
                do
                        echo ""
                        read -p "> " enter

                        if ! [ "$enter" == "" ]
                        then
                                data=("$enter")
                                echo -e "${green}\n[+] Word or Phrase '${end}$enter${green}' successfully added!\n${end}"
                                echo -e "${turquoise}\n[!] Press enter for choose another option${end}"
                                read var1
                        fi
                done
;;

        2)
                /usr/bin/clear
                trys=3
                while [ $trys -ge 1 ]
                do
                        read -p "> " info
                        echo ""

                        for i in ${data[@]}
                        do
                                if [ "$i" == "$info" ]
                                        then
                                                echo -e "${green}[+] Correct!\n${end}"
                                                echo "      _/_\_            "
                                                echo "       |_|             "
                                                echo "        |              "
                                                echo "     ---|---           "
                                                echo "        |              "
                                                echo "        |              "
                                                echo "       / \             "
                                                echo "      /   \            "
                                                echo -e "\n(the man is happy :D)"
                                                exit
                                fi

                                if ! [ "$i" == "$info" ]
                                        then
                                                trys=$(($trys-1))
                                                if [ $trys -eq 2 ]
                                                        then
                                                                echo "        __________      "
                                                                echo "        |         |     "
                                                                echo "        |         |     "
                                                                echo "      _/_\_       |     "
                                                                echo "       |_|        |     "
                                                                echo "        |         |     "
                                                                echo "     ---|---      |     "
                                                                echo "        |         |     "
                                                                echo "        |         |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "     _____________|_____"
                                                                echo -e "${red}\n[-] $trys tries left${end}"
                                                                /usr/bin/sleep 2
                                                                /usr/bin/clear
                                                fi

                                                if [ $trys -eq 1 ]
                                                        then
                                                                echo "        __________      "
                                                                echo "        |         |     "
                                                                echo "        |         |     "
                                                                echo "      _/_\_       |     "
                                                                echo "       |_|        |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "     _____________|_____"
                                                                echo -e "${red}\n[-] $trys tries left${end}"
                                                                /usr/bin/sleep 2
                                                                /usr/bin/clear
                                                fi

                                                if [ $trys -eq 0 ]
                                                        then
                                                                echo "        __________      "
                                                                echo "        |         |     "
                                                                echo "        |         |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "                  |     "
                                                                echo "     _____________|_____"
                                                                echo -e "${purple}\n[*] Max attempts used, try to guess again :(\n${end}"
                                                                echo -e "${red}\n[-] Exiting...${end}"
                                                                exit 1
                                                fi
                                fi
                        done
                done
;;

        3)
                exit 0
;;

esac
done