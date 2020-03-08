.PHONY: 01
01:
	vault -autocomplete-install

.PHONY: 02
02:
	exec ${SHELL}

# これの時に、以下をコピーできる準備をしておく
# Unseal Key: XXXXXXXXXXXXXXXXXXXXXXXXXXX
# Root Token: XXXXXXXXXXXXXXXX
.PHONY: 03
03:
	vault server -dev

.PHONY: 04
04:
	export VAULT_ADDR='http://127.0.0.1:8200'

.PHONY: 05
05:
	export VAULT_DEV_ROOT_TOKEN_ID="コピーしたRoot Token"

# 04をやってないと以下のようなエラーが出る
# Error checking seal status: Get https://127.0.0.1:8200/v1/sys/seal-status: http: server gave HTTP response to HTTPS client
.PHONY: 06
06:
	vault status


