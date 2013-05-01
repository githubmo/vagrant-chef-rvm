name "rails-development"
description "setup for ruby on rails core development"
run_list(
  "recipe[apt]",
  "recipe[preinstall]",
  "recipe[git]",
  "recipe[sqlite]",
  "recipe[mysql::client]",
  "recipe[mysql::ruby]",
  "recipe[mysql::server]",
  "recipe[postgresql::ruby]",
  "recipe[postgresql::server]",
  "recipe[memcached]",
  "recipe[nodejs::install_from_binary]",
  "recipe[rvm::system]",
  "recipe[rvm::vagrant]",
  "recipe[database]",
  "recipe[postinstall]"
)
