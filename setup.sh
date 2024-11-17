mkdir -p ~/.ssh && chmod 744 ~/.ssh/

cd /home/isucon
wget https://raw.githubusercontent.com/ryo-hoshino-UB/isucon-cheat-sheet/refs/heads/main/Makefile
# toolのインストール→git deploy keyを~/.sshに作成 の順で実行
make setup
cd /home/isucon

cat ~/.ssh/id_ed25519.pub