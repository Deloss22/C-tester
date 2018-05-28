#!/bin/bash

arrayneur=(1000 2000 3000 4000 5000)
arrayneig=(350 700 1000 1300 1600)

cd $(pwd)

echo $'\r' > time.txt

for x in $@
  do
    if [ "${x}" = "./script.sh" ]
    then
      echo 'break'
      break
    fi
    for i in ${!arrayneur[*]}
      do
        echo 'Running' ${x} 'with' ${arrayneur[i]} 'neurons and' ${arrayneig[i]} 'neighbours' >> time.txt
        ./${x} --n ${arrayneur[i]} --r ${arrayneig[i]} | tail -3  >> time.txt
        mv spacetime.out "spacetime_${x}_${arrayneur[i]}_${arrayneig[i]}.out"
        mv omega.out "omega_${x}_${arrayneur[i]}_${arrayneig[i]}.out"
        echo $'\r' >> time.txt
      done
  done
