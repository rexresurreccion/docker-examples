FROM centos:latest
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN yum -y install epel-release
RUN yum -y update; yum clean all
RUN yum install -y python-pip python-devel gcc mysql-devel
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
