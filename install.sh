#Install docker
echo "--------------------Installing Docker--------------------"
sudo apt-get update -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#Install ansible
echo "--------------------Installing Ansible--------------------"
sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
#Add docker to sudo group
echo "--------------------Add Docker to Sudo group--------------------"
sudo groupadd docker && sudo usermod -aG docker $USER && newgrp docker && sudo chmod 777 /var/run/docker.sock
#Show Jenkins Password
echo "--------------------Jenkins Password--------------------"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword