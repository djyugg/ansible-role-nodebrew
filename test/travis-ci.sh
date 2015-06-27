#!/bin/sh

ROLE_DIR="./test/roles/djyugg.nodebrew"

# 戻り値が0以外であれば処理終了
check_return_code(){
  if [ $? -ne 0 ]; then
    exit 1
  fi
}

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

cd test

# CI用インベントリファイルの生成
echo "172.0.0.1" > hosts

# syntax check
ansible-playbook --syntax-check travis-ci-site.yml -i hosts
check_return_code

# playbookの実行
ansible-playbook travis-ci-site.yml -i hosts
check_return_code

# パス設定のファイル存在確認
ls -l /etc/profile.d/nodebrew.sh
check_return_code

. /etc/profile
# インストールしたnodebrewにパスが通っていることを確認
which nodebrew
check_return_code

# インストールしたnode.jsにパスが通ってることを確認
which node
check_return_code
