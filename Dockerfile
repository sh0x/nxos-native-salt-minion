FROM ubuntu:groovy

# Install Dependencies
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive TZ=UTC apt-get install -y tzdata wget gnupg systemctl iputils-ping vim python3-pip

# Install Salt
RUN wget -O - https://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
RUN echo "deb http://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest focal main" > /etc/apt/sources.list.d/saltstack.list
RUN apt-get update
RUN apt-get install -y salt-minion
RUN pip install napalm

# Patch Salt NXOS Module
RUN wget -q https://raw.githubusercontent.com/saltstack/salt/a98da25928d3ef2b405b195f8a5e5d94c48e747a/salt/utils/nxos.py -O /usr/lib/python3/dist-packages/salt/utils/nxos.py

# Run minion
CMD salt-minion
