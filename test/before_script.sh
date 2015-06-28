#!/bin/sh

WORK_DIR="./test"
ROLE_DIR=${WORK_DIR}"/roles/djyugg.nodebrew"

# roles配置ディレクトリの初期化
if [ -d ${ROLE_DIR} ]; then
  rm -rf ${ROLE_DIR}/*
else
  mkdir -p ${ROLE_DIR}
fi

# rolesファイルのコピー
for dir in "defaults handlers meta tasks templates";
  do cp -pR ${dir} ${ROLE_DIR};
done
