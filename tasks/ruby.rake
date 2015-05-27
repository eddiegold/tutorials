namespace :ruby do

  desc "Installing basic gems"
  task :basic do
    sh "sudo gem install json rspec curb pry"
  end

  desc "Installing development gems"
  task :dev do
    sh "gem install "
    sh "sudo gem install ruby-lint configulations kubeclient activerecord pry-theme"
  end

  desc "install all gems"
  task :all => [:basic, :dev] do
  end

end
