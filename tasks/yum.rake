namespace :yum do

  desc "yum update machine"
  task :update do
    sh "sudo yum install -y epel-release"
    sh "sudo yum update -y"
  end

  desc "yum install locate+vim, curl+wget"
  task :basic do
    sh "sudo yum install -y mlocate vim-enhanced wget curl"
    sh "sudo updatedb"
  end

  desc "yum install databases, postgrs+sqlite"
  task :db do
    sh "sudo yum install -y postgresql-devel postgresql-server sqlite"
  end

  desc "yum install make gcc..."
  task :dev do
    sh "sudo yum install -y  gcc g++ make automake autoconf curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel sqlite-devel"

    #sh "sudo yum install -y http://mirror.centos.org/centos/7/os/x86_64/Packages/ruby-devel-2.0.0.598-24.el7.x86_64.rpm "
  end

  desc "yum install vcs, hg + git"
  task :vcs do
    sh "sudo yum install -y git hg"
  end

  desc "yum install nmap (netcat) and bind-utils (dig)"
  task :network do
    sh "sudo yum install -y git hg"
  end

  desc "yum install all"
  task :all => [:update, :basic, :db, :dev, :vcs] do
  end

end
