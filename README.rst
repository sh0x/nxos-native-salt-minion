=======================
native nxos salt-minion
=======================

This is a native salt-minion docker container for Cisco Nexus 9k.


To Run
------

.. code-block::

    git clone https://github.com/sh0x/nxos-native-salt-minion.git
    cd nxos-native-salt-minion
    docker-compose up


To Build
--------

.. code-block::

    git clone https://github.com/sh0x/nxos-native-salt-minion.git
    cd nxos-native-salt-minion
    docker build -t salt-minion .


Docker
----------
https://hub.docker.com/r/sh0x/nxos-native-salt-minion

.. code-block::

    docker pull sh0x/nxos-native-salt-minion
    docker run \
      --network host \
      --name=salt-minion \
      --restart unless-stopped \
      --volume "/tmp/nginx_local/nginx_1_be_nxapi.sock:/tmp/nginx_local/nginx_1_be_nxapi.sock:rw" \
      -d -it sh0x/nxos-native-salt-minion


Switch
------
.. code-block::
    
    interface mgmt0
      ip address <ip>
      vrf member management

    vrf context management
      ip name-server 8.8.8.8
      ip route 0.0.0.0/0 10.255.1.1

.. code-block::

    run bash sudo su 
    service docker start
    chkconfig --add docker
    ip netns exec management bash
    # Make sure name resolution works, or fix /etc/resolv.conf

