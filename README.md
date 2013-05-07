vagrant-chef-rvm
================

Knife-solo with Vagrant bringing you RVM, database setup and ruby with rails and bundler gems. Adapted from https://github.com/sstephenson/ruby-build so thanks goes to [sstephenson](https://github.com/sstephenson)

The current setup provides:

* Git
* Databases (SQLite, MySQL, PostgreSQL)
* RVM
* Ruby (version in file 1.9.2, can be changed to any version you wish)
* Memcached

Getting Started
---------------

Simply follow the commands below for a quick setup. If your gems are installed in a place that requires privelidged access to modify, please append the command with `sudo` such that you may have `sudo gem install ...` instead of `gem install`.

```shell
git clone git://github.com/githubmo/vagrant-chef-rvm.git
cd vagrant-chef-rvm
bundle install
cd chef
librarian-chef install
cd ..
vagrant up
```

And that is it. You will need to have ruby installed and the bundler gem present before you start using Vagrant with Knife-Solo.

NOTE
----

* In the VagrantFile, add and remove the rubies you wish to have. Each ruby installed will install the bundler and rails gem.
* For the line that contains `config.vm.share_folder` in the VagrantFile, change `./LocalSupport` to the directory you wish to expose in the virtual machine.
* Edit `chef/roles/rails-development.rb` for the packages you require. Make sure if you add anything new here that you have the correct chefbook in the Cheffile located in `chef/Cheffile`
* NFS is not supported in Windows, for the share_folder option in the Vagrantfile, but to my understanding it should work.
