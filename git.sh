git init
ssh -T git@github.com
git remote add origin {レポジトリのssh}
cat << EOF > .gitignore
php
nodejs
python
ruby
perl
rust
EOF
git add .
git commit -m 'initial commit'
git branch -M main
git push origin main