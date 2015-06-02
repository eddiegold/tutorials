YUM_CMD = "sudo yum install -y -q"

namespace :yum do

  desc "yum update machine"
  task :update do
    sh "#{YUM_CMD} epel-release"
    sh "sudo yum update -y -q"
  end

  desc "yum install locate+vim, curl+wget"
  task :basic do
    sh "#{YUM_CMD} mlocate vim-enhanced wget curl"
    sh "sudo updatedb"
  end

  desc "yum install databases, postgrs+sqlite"
  task :db do
    sh "#{YUM_CMD} postgresql-devel postgresql-server sqlite"
  end

  desc "yum install make gcc..."
  task :dev do
    sh "#{YUM_CMD}  gcc g++ make automake autoconf curl-devel openssl-devel zlib-devel httpd-devel apr-devel apr-util-devel sqlite-devel ruby-devel"

    #sh "#{YUM_CMD} http://mirror.centos.org/centos/7/os/x86_64/Packages/ruby-devel-2.0.0.598-24.el7.x86_64.rpm "
  end

  desc "yum install vcs, hg + git"
  task :vcs do
    sh "#{YUM_CMD} git hg"
  end

  desc "yum install nmap (netcat) and bind-utils (dig), netstat (nettools)"
  task :network do
    sh "#{YUM_CMD} nmap bind-utils net-tools"
  end

  desc "yum install all"
  task :all => [:update, :basic, :db, :dev, :vcs] do
  end

end
