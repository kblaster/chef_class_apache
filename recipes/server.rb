package 'httpd' do
	action :install 
end

file '/var/www/html/index.html' do
	content "<ul>
			<li>ipaddr: #{node['ipaddress']}</li>
			<li>hostname: #{node['hostname']}</li>
		</u>"
end

service 'httpd' do
	action [ :enable, :start ]
end
