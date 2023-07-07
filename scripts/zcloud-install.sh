#!/usr/bin/env sh

export ZCLOUD_OS=${ZCLOUD_OS}
export ZCLOUD_ARCH=${ZCLOUD_ARCH}
export ZCLOUD_DEST_DIR=${ZCLOUD_DEST_DIR:-"${HOME}/bin"}
export ZCLOUD_EXT=""

# Detect OS
if [ "${ZCLOUD_OS}" = "" ]; then
  case $(uname | tr '[:upper:]' '[:lower:]') in
  linux*)
    ZCLOUD_OS=linux
    ;;
  bsd*)
    ZCLOUD_OS=linux
    ;;
  darwin*)
    ZCLOUD_OS=darwin
    ;;
  msys*)
    ZCLOUD_OS=windows
    ;;
  *)
    ZCLOUD_OS=linux
    ;;
  esac
  if [ -f /etc/os-release ]; then
    OS_ID="$(. /etc/os-release && echo "$ID" | tr '[:upper:]' '[:lower:]')"
    if [ "${OS_ID}" = "alpine" ]; then
      ZCLOUD_OS=alpine
    fi
  fi
fi

# Detect arch
if [ "${ZCLOUD_ARCH}" = "" ]; then
  case $(arch | tr '[:upper:]' '[:lower:]') in
  x86_64*)
    ZCLOUD_ARCH=amd64
    ;;
  aarch64*)
    ZCLOUD_ARCH=arm64
    ;;
  arm64*)
    ZCLOUD_ARCH=arm64
    ;;
  *)
    ZCLOUD_ARCH=amd64
    ;;
  esac
fi

if [ "${ZCLOUD_OS}" = "win" ]; then
  ZCLOUD_EXT=".exe"
fi

export FILE_NAME="zcloud-${ZCLOUD_OS}-${ZCLOUD_ARCH}${ZCLOUD_EXT}"

export DOWNLOAD_LINK="https://gh.zcloud.ws/zcloud-cli/${FILE_NAME}"

export SAVED_FILE="${DEST_DIR}/zcloud${ZCLOUD_EXT}"

echo Download client from "$DOWNLOAD_LINK"

if [ ! -d "${DEST_DIR}" ]; then
  mkdir -p "${DEST_DIR}"
fi

curl -s "${DOWNLOAD_LINK}" --output "${SAVED_FILE}"
chmod +x "${SAVED_FILE}"
