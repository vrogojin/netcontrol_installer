git clone http://vrogojin@combio.abo.fi/scm/git/netcontrol_docker 	net_con_docker
if [ $? -eq 0 ]; then
    echo NETCONTROL4BIOMED DOCKER CONTAINERS CLONED!
else
    echo UPDATING NETCONTROL4BIOMED ...
    cd net_con_docker
    git pull
    cd ..
fi
cd net_con_docker

echo LAUNCHING NETCONTROL4BIOMED ...
screen -d -m -s "netcontrol4biomed" ./run.sh
echo NETCONTROL4BIOMED LAUNCHED! USE screen -R netcontrol4biomed TO ACCESS THE CONSOLE