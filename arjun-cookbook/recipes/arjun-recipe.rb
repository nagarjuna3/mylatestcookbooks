#
# Cookbook:: arjun-cookbook
# Recipe:: arjun-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
    action :install
  end
end

  
package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content 'hello sirji!! second version'
  action :create
end

service 'httpd' do
  action [ :enable, :start ]
end




