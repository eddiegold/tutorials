namespace :setup do
  desc "setting up default bashrc"
  task :bashrc  do
    sh "cp -b ./unix/bashrc_default ~/.bashrc"
  end

  desc "setting up default vimrc"
  task :vimrc  do
    sh "cp -b ./vim/vimrc.default ~/.vimrc"
  end

  desc "augment ~/.bash_history with saved history files"
  task :history  do
    sh "cat history/*.history >> ~/.bash_history"
  end

  desc "setting up all default configs"
  task :all => [:vimrc, :bashrc, :history]  do
  end

end
