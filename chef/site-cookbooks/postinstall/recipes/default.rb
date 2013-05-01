#
# Cookbook Name:: postinstall
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# PLEASE NOTE
# These are postinstalls based on rbenv, I don't know if we need
# something similar for rvm. If we do and you are reading this, please
# modify and send a pull request on github, or at least convey your message 

# group "rbenv" do
#   action :create
#   members "vagrant"
#   gid 1100
#   append true
# end

# bash "chgrp and chmod" do
#   user "root"
#   cwd "/usr/local"
#   code <<-EOH
#     chgrp -R rbenv rbenv
#     chmod -R g+rwxX rbenv
#   EOH
# end
