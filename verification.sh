mkdir /tmp/verif
whoami > /tmp/verif/whoami
pwd > /tmp/verif/pwd

cd /home/remoteuser

if [[ -f ClusterVerification.R ]]; then sudo rm -Rf ClusterVerification.R; fi;

# UPDATE THE URL FOR MLADS
wget https://raw.githubusercontent.com/maximuslee1226/mlads_spark_tutorial/master/ClusterVerification.R

Rscript --default-packages= /home/remoteuser/ClusterVerification.R > /tmp/verif/rout.log
