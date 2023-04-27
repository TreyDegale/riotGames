<h1> /riotGames </h1>

<h2> A project incorporating many DevOps tools and practices: </h2>

- <h3> Containerisation with: <a href="https://www.docker.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original-wordmark.svg" alt="docker" width="40" height="40"/>
</a> </h3>

- <h3> Infrastructure as Code with: <a href="https://www.terraform.io/" target="_blank" rel="noreferrer"> <img src="https://opensenselabs.com/sites/default/files/inline-images/terraform.png" alt="Terraform" width="40" height="40" > </a> </h3>


- <h3> Continous Integration/Delivery with: <a href="https://www.jenkins.io/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/jenkins/jenkins-original.svg" alt="Jenkins" width="40" height="40"/> </a> </h3>


- <h3> Configuration Management with: <a href="https://www.ansible.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ansible/ansible-original.svg" alt="ansible" width="40" height="40"/> </a> </h3>

- <h3> Infrastructure: <a href="https://aws.amazon.com" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="aws" width="40" height="40"/> </a> </h3>

</br><h2>Short Description: </h2>
<p>This project deploys a simple flask application on a AWS EC2 instance, which was created with Terraform and provisioned with Ansible, all of this was done through a Jenkins CICD pipeline. This repositories master branch is the final product, but also includes other branches that were used for throughout different stages of this project.

This application retrieves information from the <b>RiotGames</b> API, slightly manipulates it and does a simple comparison. The end result, printing an appropriate message for the character with the highest number for a given stat.</p>

~~~
[NAME] has the highest base attack damage
~~~

</br><h1>Branches</h1>

<h2>docker-images</h2>
<p>This branch was all about turning the python scripts I had, that serve as the main functionality for the contents of this project, was containerised. A very simple Dockerfile and respective requirement.txt.</p>

<h2>terraform</h2>
<p>This branch introduced three things: Infrastructure as Code with Terraform, a slight code refactor and a Jenkins pipeline. The main.tf defines a security group as well as an EC2 instance, allowing SSH which will later be used by Ansible in addition to HTTP 80 and 8080 that is defined in the flask app.</p>

<h2>ec2-setup</h2>
<p>This branch introduced configuration management with Ansible, it used a non-Terraform EC2 instance to reduce complexity slightly. Installing many of the needed software manually, focusing on actual execution of the application</p>

<h2>ec2-final-steps</h2>
<p>The final branch - refactoring to two ansible playbooks, one for installation and another for running the application. In addition to introducing nginx which is run in a Docker container and so a docker-compose.yml was added as the final piece.</p>

</br><h1>Images</h1>
<h2>AWS EC2 Endpoint<h2>
<img src="./images/EC2-endpoint.png">

</br><h2>Jenkins Pipeline Build<h2>
<img src="./images/Successful-pipeline-build.png">