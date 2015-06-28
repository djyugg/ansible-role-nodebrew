#!/bin/sh

# 戻り値が0以外であれば処理終了
check_return_code(){
  if [ $? -ne 0 ]; then
    exit 1
  fi
}

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
