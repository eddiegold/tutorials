namespace :setup do
  desc "setting up default bashrc"
  task :bashrc  do
    sh "cp -b ./unix/bashrc_default ~/.bashrc"
  end

  desc "setting up default vimrc"
  task :vimrc  do
    sh "cp -b ./vim/vimrc.default ~/.vimrc"
    sh "rm -rf  ~/.vim/bundle/Vundle.vim; git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
    sh "vim +PluginInstall +qall"
  end

  desc "augment ~/.bash_history with saved history files"
  task :history  do
    sh "cat history/*.history > ~/.useful_history"
  end

  desc "overwrite git config file"
  task :git_config  do
    sh "sudo cp -f git/gitconfig ./.git/config"
  end

  desc "setting up all default configs"
  task :all => [:vimrc, :bashrc, :history, :git_config]  do
  end

end
