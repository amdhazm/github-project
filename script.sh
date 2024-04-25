#!/usr/bin/env bash

while [ true ]; do
    
    echo 'what do you want to do?'
    echo '1: create a bash script file'
    echo '2: create normal file'
    echo '3: create a new directory'
    echo '4: Exit'

    read -p "choise --> " INPUT

    case "${INPUT}" in
        1)  
            echo 'How many files do you want to create?'
            read  count
            while [ $count -gt 0 ]; do
                echo "Enter the name of the file number $count"
                read -p 'name-> ' nameSH
                touch $nameSH
                chmod +x $nameSH
                echo "#!/bin/bash" >$nameSH
                echo "$nameSH is created successfully :)"
                count=$(($count -1))
            done
        ;;
        2)
        echo 'How many files do you want to create?'
            read  count
            while [ $count -gt 0 ]; do
                echo "Enter the name of the file number $count"
                read -p 'name-> ' nameTXT
                touch $nameTXT
                echo "$nameTXT is created successfully :)"
                count=$(($count -1))
            done
        ;;
        3)
        echo 'How many directories do you want to create?'
            read  count
            while [ $count -gt 0 ]; do
                echo "Enter the name of the directory"
                read -p 'name-> ' nameDIR
                mkdir $nameDIR
                echo "$nameDIR is created successfully :)"
                count=$(($count -1))
            done
        ;;
        4)
            echo 'thank you for using my script'
            exit 1
        ;;
        *)
            echo "Wrong choise, please try again"
        ;;
    esac

done


