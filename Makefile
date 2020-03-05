export ATAGO_IP=192.168.33.11

.PHONY: up
up:
	vagrant up

.PHONY: atago
atago:
	ssh \
		-i .vagrant/machines/atago/virtualbox/private_key \
		vagrant@${ATAGO_IP}

# デバッグ用
.PHONY: sync
sync:
	rsync -rtzv \
	-e 'ssh -i .vagrant/machines/atago/virtualbox/private_key' \
	--exclude '*.adoc' \
	--exclude 'docs' \
	--exclude '.*' \
	--exclude 'Vagrantfile' \
	--exclude 'Makefile' \
		./ \
		vagrant@${ATAGO_IP}:/home/vagrant/
