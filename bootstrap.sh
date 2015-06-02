echo "Installing Ruby and rake"
sudo yum install ruby -y -q
sudo gem install -q rake
sleep 3

echo "configuration (.bashrc, vimrc ...)"
/usr/local/bin/rake setup:all

echo "sourcing ~/.bashrc"
source ~/.bashrc

# installing basic yum repos
/usr/local/bin/rake yum:basic
