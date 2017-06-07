file '/var/www/html/index.html' do
	action :delete
end

service 'httpd' do
	action [ :disable, :stop ]
end

package 'httpd' do
        action :remove
end

