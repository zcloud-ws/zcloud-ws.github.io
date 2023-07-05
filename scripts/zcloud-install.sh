#!/usr/bin/env sh

export ZCLOUD_OS=${ZCLOUD_OS:-linux}
export ZCLOUD_ARCH=${ZCLOUD_ARCH:-amd64}
export ZCLOUD_EXT=""
if [ "${ZCLOUD_OS}" = "win" ]; then
  ZCLOUD_EXT=".exe"
fi

export FILE_NAME="zcloud-${ZCLOUD_OS}-${ZCLOUD_ARCH}${ZCLOUD_EXT}"

export DOWNLOAD_LINK="https://gh.zcloud.ws/zcloud/${FILE_NAME}"
export DEST_DIR=${DEST_DIR:-"${PWD}/bin"}
export SAVED_FILE="${DEST_DIR}/zcloud${ZCLOUD_EXT}"

echo Download client from "$DOWNLOAD_LINK"
echo "${SAVED_FILE}"
if [ ! -d "${DEST_DIR}" ]; then
  mkdir -p "${DEST_DIR}"
fi
curl "${DOWNLOAD_LINK}" --output "${SAVED_FILE}"
chmod +x "${SAVED_FILE}"
