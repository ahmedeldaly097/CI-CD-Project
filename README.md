# Create Jenkins EC2 on AWS using Terraform | Run Jenkins Pipeline using Jenkinsfile

## Step 1:
### Build AWS EC2 Instance
```
cd Terraform-Ubuntu-EC2/

terraform init

terraform plan

terraform apply
```
---
## Step 2:
### Install Docker, Jenkins and other dependencies
#### SSH to the EC2 using the keypair, Install Docker and Install Jenkins image
1. [Install Docker on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
2. [Downloading and building Jenkins in Docker](https://www.jenkins.io/doc/book/installing/docker/)
```
docker run -d -p 8080:8080 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v [your_volume]:/var/jenkins_home \      #optional
--name Jenkins \
[your_image_name]
```
## Step 3:
### Setup Jenkins
```bash
# Access Jenkins using the EC2 IPv4-Public-DNS:8080
```
---

## Step 4:
### Add Github and Dockerhub credentials in Jenkins
`Manage Jenkins > Manage Credentials > Global > Add Credentials`

Make sure to use Dockerhub access token instaed of the password
`Dockerhub > Account Settings > Security > New Access Token`

---
## Step 5: 
### Create Jenkins Pipeline 
`Choose pipeline, if not found you can install it from Manage Jenkins > Manage Plugins`

In **Pipeline Section** in the end of the page choose **Pipeline script from SCM** > Add **Github Repository link** > Using **Github Credentials**

`Make sure you choose the right branch and the right path of the Jenkinsfile`

---

