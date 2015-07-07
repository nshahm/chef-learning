file "/etc/motd" do

action :create
content "Property of COMPANY NAME"
mode "0644"
user "shahm"
group "shahm"
end;
