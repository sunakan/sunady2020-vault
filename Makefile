export ATAGO_IP=192.168.33.11

up:
	vagrant up

atago:
	ssh \
		-i .vagrant/machines/atago/virtualbox/private_key \
		vagrant@${ATAGO_IP}
