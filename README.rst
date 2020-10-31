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
