#!/usr/bin/env bash
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=`seq 1000 1000 20000`
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=100; sleep 30;
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=1000; sleep 30; &&
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=2000; sleep 30; &&
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=3000; sleep 30; &&
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=5000; sleep 30; &&
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=6000; sleep 30; &&
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=7000; sleep 30; &&
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=8000; sleep 30; &&
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=9000; sleep 30; &&
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=10000; sleep 30; &&
#mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=20000
for i in `seq 1000 1000 10000`;
do mvn gatling:test -Dgatling.simulationClass=LoadSimulation -Dbase.url=http://localhost:8092/ -Dtest.path=hello/100 -Dsim.users=${i} -Dtest.name=webflux-with-latency
#    `lsof -i:8091 > /dev/null; if [ $? -eq 0 ]; then
#     echo "mvc-with-latency"
#    fi;
#    lsof -i:8092 > /dev/null; if [ $? -eq 0 ]; then
#    echo "webflux-with-latency"
#    fi;`
sleep 300
done;