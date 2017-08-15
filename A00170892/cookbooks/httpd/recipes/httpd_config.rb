service 'httpd' do
    action [ :enable, :start ]
end

service 'firewalld' do
    action [ :enable, :start ]
end

execute 'abrirPuerto80' do
  command 'firewall-cmd --zone=public --add-port=80/tcp --permanent'
  action :run
end

execute 'reload' do
  command 'firewall-cmd --reload'
  action :run
end
