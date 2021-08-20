FROM centos:latest

RUN yum install wget -y
RUN yum install net-tools -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install java -y
RUN yum install jenkins -y
RUN yum install git -y
RUN echo "jenkins: ALL=(ALL)" >> /etc/sudoers
RUN yum install python3 -y


CMD java -jar /usr/lib/jenkins/jenkins.war 

