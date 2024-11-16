wget https://raw.githubusercontent.com/ryo-hoshino-UB/isucon-cheat-sheet/refs/heads/main/Makefile
mkdir -p ~/.ssh && chmod 744 ~/.ssh/
cd ~/.ssh
make setup
cat ~/.ssh/id_ed25519.pub