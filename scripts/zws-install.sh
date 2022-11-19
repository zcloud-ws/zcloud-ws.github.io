#!/usr/bin/env sh

export ZWS_OS=${ZWS_OS:-linux}
export ZWS_ARCH=${ZWS_ARCH:-amd64}
export ZWS_EXT=""
if [ "${ZWS_OS}" = "win" ]; then
  ZWS_EXT=".exe"
fi

export FILE_NAME="zws-${ZWS_OS}-${ZWS_ARCH}${ZWS_EXT}"

export DOWNLOAD_LINK="https://gh.zcloud.ws/zws/${FILE_NAME}"
export DEST_DIR="${PWD}/bin"
export SAVED_FILE="${DEST_DIR}/zws${ZWS_EXT}"

echo Download client from "$DOWNLOAD_LINK"

if [ ! -d "${DEST_DIR}" ]; then
  mkdir -p "${DEST_DIR}"
fi
curl "${DOWNLOAD_LINK}" --output "${SAVED_FILE}"
chmod +x "${SAVED_FILE}"
