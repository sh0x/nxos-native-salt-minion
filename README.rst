=======================
native nxos salt-minion
=======================

This is a native salt-minion docker container for Cisco Nexus 9k.

Setup
-----

To Run:

.. code-block::

    git clone https://github.com/sh0x/nxos-native-salt-minion.git
    cd nxos-native-salt-minion
    docker-compose up

To Build:

.. code-block::
    git clone https://github.com/sh0x/nxos-native-salt-minion.git
    cd nxos-native-salt-minion
    docker build -t salt-minion .


Docker Hub:

.. code-block::

    docker pull sh0x/nxos-native-salt-minion
    docker run \
      --network host \
      --hostname=switch \
      --name=salt-minion \
      --restart unless-stopped \
      --volume "/tmp/nginx_local/nginx_1_be_nxapi.sock:/tmp/nginx_local/nginx_1_be_nxapi.sock:rw" \
      -d -it sh0x/nxos-native-salt-minion

