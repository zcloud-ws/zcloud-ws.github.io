## https://gh.zcloud.ws

# zcloud docs https://docs.zcloud.ws 

# zcloud client utilitary

- [Linux amd64](https://gh.zcloud.ws/zws/zws-linux-amd64)
- [Linux arm64](https://gh.zcloud.ws/zws/zws-linux-arm64)
- [Windows amd64](https://gh.zcloud.ws/zws/zws-win-amd64.exe)
- [Windows arm64](https://gh.zcloud.ws/zws/zws-win-arm64.exe)
- [Mac amd64](https://gh.zcloud.ws/zws/zws-darwin-amd64)
- [Mac arm64](https://gh.zcloud.ws/zws/zws-darwin-arm64)

### Using a script for download (requires curl installed)

```shell
curl https://gh.zcloud.ws/scripts/zws-install.sh | ZWS_OS=linux ZWS_ARCH=amd64 sh -
```

### Valid environment variables values for script

- ZWS_OS: `linux`, `win` and `darwin` (Mac)
- ZWS_ARCH: `amd64` and `arm64`
