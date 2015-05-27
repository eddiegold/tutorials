sudo yum install ruby -y
sudo gem install rake
sleep 3

/usr/local/bin/rake setup:all
source ~/.bashrc
/usr/local/bin/rake yum:basic
