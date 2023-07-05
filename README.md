## https://gh.zcloud.ws

# zcloud docs https://docs.zcloud.ws 

# zcloud client utilitary

- [Linux amd64](https://gh.zcloud.ws/zcloud/zcloud-linux-amd64)
- [Linux arm64](https://gh.zcloud.ws/zcloud/zcloud-linux-arm64)
- [Windows amd64](https://gh.zcloud.ws/zcloud/zcloud-win-amd64.exe)
- [Windows arm64](https://gh.zcloud.ws/zcloud/zcloud-win-arm64.exe)
- [Mac amd64](https://gh.zcloud.ws/zcloud/zcloud-darwin-amd64)
- [Mac arm64](https://gh.zcloud.ws/zcloud/zcloud-darwin-arm64)

### Using a script for download (requires curl installed)

```shell
curl https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=linux ZCLOUD_ARCH=amd64 sh -
```

### Valid environment variables values for script

- ZCLOUD_OS: `linux`, `win` and `darwin` (Mac)
- ZCLOUD_ARCH: `amd64` and `arm64`
- DEST_DIR: default value is `${PWD}/bin`

## All OS installation options

### Linux
#### x86_64
```shell
curl https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=linux ZCLOUD_ARCH=amd64 sh -
```
#### arm64
```shell
curl https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=linux ZCLOUD_ARCH=arm64 sh -
```

### MacOS
#### x86_64
```shell
curl https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=darwin ZCLOUD_ARCH=amd64 sh -
```
#### arm64, M1, M2
```shell
curl https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=darwin ZCLOUD_ARCH=arm64 sh -
```

### Windows
#### x86_64
```shell
curl https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=win ZCLOUD_ARCH=amd64 sh -
```
#### arm64
```shell
curl https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=win ZCLOUD_ARCH=arm64 sh -
```

## Install for all user (require ROOT/sudo)

Linux x86_64 example

```shell
curl https://gh.zcloud.ws/scripts/zcloud-install.sh | DEST_DIR=/usr/local/bin ZCLOUD_OS=linux ZCLOUD_ARCH=amd64 sudo sh -
```
