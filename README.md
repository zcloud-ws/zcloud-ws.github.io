# zCloud Client

## Deploy

- Install (see options below)
- Run

```
./zcloud deploy --user-token your-token --env your-env
```

## Installation

- [Linux amd64](https://gh.zcloud.ws/zcloud-cli/zcloud-linux-amd64)
- [Linux arm64](https://gh.zcloud.ws/zcloud-cli/zcloud-linux-arm64)
- [Linux Alpine amd64](https://gh.zcloud.ws/zcloud-cli/zcloud-alpine-amd64)
- [Linux Alpine arm64](https://gh.zcloud.ws/zcloud-cli/zcloud-alpine-arm64)
- [Windows amd64](https://gh.zcloud.ws/zclou-clid/zcloud-win-amd64.exe)
- [Windows arm64](https://gh.zcloud.ws/zcloud-cli/zcloud-win-arm64.exe)
- [Mac amd64](https://gh.zcloud.ws/zcloud-cli/zcloud-darwin-amd64)
- [Mac arm64](https://gh.zcloud.ws/zcloud-cli/zcloud-darwin-arm64)

### Using a script for download (requires curl installed)

```shell
# Auto detect OS and arch
curl -s https://gh.zcloud.ws/scripts/zcloud-install.sh | sh -
```

### Valid environment variables values for script

- ZCLOUD_OS: `linux`, `alpine`, `win` and `darwin` (Mac)
- ZCLOUD_ARCH: `amd64` and `arm64`
- ZCLOUD_DEST_DIR: default value is currently work directory

## Install in /usr/local/bin for all user (with sudo)

```shell
curl -s https://gh.zcloud.ws/scripts/zcloud-install.sh | sudo ZCLOUD_DEST_DIR=/usr/local/bin sh -
```

## Install in /usr/local/bin for all user (with root user)

```shell
curl -s https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_DEST_DIR=/usr/local/bin sh -
```

# zcloud-cli Environment variables

- `ZCLOUD_USER_TOKEN`: Token to identify user application
- `ZCLOUD_ENV_NAME`: Environment name to create or update
- `ZCLOUD_SRC_DIR`: Directory usage as source code to send to deploy
- `ZCLOUD_TEMP_DIR`: Directory usage to create temporary files. Default uses defined by OS.

## All OS installation options

### Linux
#### x86_64
```shell
curl -s https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=linux ZCLOUD_ARCH=amd64 sh -
```
#### arm64
```shell
curl -s https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=linux ZCLOUD_ARCH=arm64 sh -
```

### MacOS
#### x86_64
```shell
curl -s https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=darwin ZCLOUD_ARCH=amd64 sh -
```
#### arm64, M1, M2
```shell
curl -s https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=darwin ZCLOUD_ARCH=arm64 sh -
```

### Windows
#### x86_64
```shell
curl -s https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=win ZCLOUD_ARCH=amd64 sh -
```
#### arm64
```shell
curl -s https://gh.zcloud.ws/scripts/zcloud-install.sh | ZCLOUD_OS=win ZCLOUD_ARCH=arm64 sh -
```

