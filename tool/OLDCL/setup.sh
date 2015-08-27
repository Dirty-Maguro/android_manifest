#!/bin/bash
clear

source ~/.bashrc
if [ $INIT == "true" ]; then 

 OPTION=0
 CHMOD=0
 REPO=0

 function checkanswer() {

   if [ "$answer" != "yes" ] && [ "$answer" != "no" ]; then
        echo
        echo Bad answer, repet...
        sleep 2
        clear
   else
        break
        echo
   fi

 }

 function secure() {

    sleep 1
    echo
    case "$OPTION" in
 
         *) echo Error...
            exit 0
            ;;
        
         1) echo Without the right dependencies you can not build the rom.
            CHMOD=1
            secureask
            ;;

         2) echo Without repo you can not "sync" the rom.
            CHMOD=2
            secureask
            ;;

         3) echo Without the right "source" you can not build the rom.
            CHMOD=3
            secureask
            ;;

     esac

 }

 function secureask() {

         echo
         sleep 1

        while true;
        do
         echo Do you really want to continue? [yes/no]
         read answer
         checkanswer
        done

         if [ "$answer" == "no" ]; then
              casechmod
         else 
              stop
         fi

 }

 function casechmod() {

    case "$CHMOD" in

         1) echo I proceed with the installation...
            sleep 1
            chmod 777 dep.sh
            ./dep.sh
            ;;

         2) echo I proceed with the installation...
            sleep 1
            chmod 777 repo.sh
            ./repo.sh
            ;;

         3) echo I proceed with the download...
            sleep 1
            chmod 777 source.sh
            ./source.sh
            ;; 
 
         *) echo Error...
            exit 0
            ;;

    esac

 }

 function stop() {

    echo

   while true;
   do
    echo Stop the process now? [yes/no]
    read answer
    checkanswer
   done

    if [ "$answer" == "yes" ]; then
         exit 0
    else

         if [ "$REPO" == "1" ]; then
             REPO=2
         fi

         echo
         echo Proceed at your own risk.
         sleep 1
         echo Remember you can not build the DirtyUnicorns.
         echo
         sleep 1
    fi

 }

 function checkrepo() {
    if [ -d  ~/bin ]; then
       if [ -f ~/bin/repo ]; then
            REPO=0
            echo The tool check "if" repo is installed.
            echo You have repo, so you can go ahead and download the source...
            sleep 1
            echo
       fi
    fi 
 }  


 while true;
 do
  echo Have you already "install" the right dependencies? [yes/no]
  read answer 
  checkanswer
 done
 if [ "$answer" == "no" ]; then
     echo

    while true;
    do
     echo Do you want to "install" them now? [yes/no]
     read answer
     checkanswer
    done

     if [ "$answer" == "yes" ]; then
         chmod 777 dep.sh
         ./dep.sh
     else
         OPTION=1
         secure
     fi
 fi


 while true;
 do
  echo Have you already "install" repo? [yes/no]
  read answer
  checkanswer
 done
 if [ "$answer" == "no" ]; then
     echo

    while true;
    do
     echo Do you want to "install" it now? [yes/no]
     read answer
     checkanswer
    done

     if [ "$answer" == "yes" ]; then
         chmod 777 repo.sh
         ./repo.sh
     else
         REPO=1
         OPTION=2
         secure
     fi
 fi


 if [ "$REPO" == 2 ]; then
      checkrepo
 fi
 if [ "$REPO" != 2 ]; then

     while true;
     do
      echo Have you already download the right source? [yes/no]
      read answer
      checkanswer
     done

      if [ "$answer" == "no" ]; then
          echo

         while true;
         do
          echo Do you want to download them now? [yes/no]
          read answer
         checkanswer
         done

          if [ "$answer" == "yes" ]; then
              chmod 777 source.sh
              ./source.sh
          else
              OPTION=3
              secure
          fi
      fi

 else
      sleep 1
      echo
      echo You "do" not have repo, so you can not download the "source" bye.
      exit 0
 fi

else

 echo Please run the init.sh
 sleep 1
 exit 0

fi
