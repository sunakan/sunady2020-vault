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

# これはMakeでやってもダメ
.PHONY: 04
04:
	export VAULT_ADDR=http://127.0.0.1:8200

.PHONY: 05
05:
	export VAULT_DEV_ROOT_TOKEN_ID="コピーしたRoot Token"

# 04をやってないと以下のようなエラーが出る
# Error checking seal status: Get https://127.0.0.1:8200/v1/sys/seal-status: http: server gave HTTP response to HTTPS client
.PHONY: 06
06:
	vault status

.PHONY: 07
07:
	vault kv put secret/hello foo=world excited=yes

.PHONY: 08
08:
	vault kv get secret/hello

.PHONY: 09
09:
	vault kv get -field=excited secret/hello

.PHONY: 10
10:
	vault kv get -format=json secret/hello | jq -r .data.data.excited

.PHONY: 11
11:
	vault kv delete secret/hello

# kv エンジンは secret/**** をサポート
# だからこれはエラー
.PHONY: 12
12:
	vault kv put foo/bar a=b

# $ vault secrets enable -path=kv kv
# $ vault secrets enable kv
# 同じ意味
.PHONY: 13
13:
	vault secrets enable kv

.PHONY: 14
14:
	vault secrets list
