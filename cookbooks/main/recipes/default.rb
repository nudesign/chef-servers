package 'git-core'
package 'zsh'
package 'nginx'

user node[:user][:name] do
  gid "sudo"
  home "/home/#{node[:user][:name]}"
  supports manage_home: true
  shell "/bin/zsh"
end

template "/home/#{node[:user][:name]}/.zshrc" do
    source 'zshrc.erb'
    owner node[:user][:name]
end

service 'nginx' do
  supports [:status]
  action :start
end
