package "git" do
  action :install
end

file "/home/shahm/.gitconfig" do
  action :create
  content "[user] \n name=Shahm Nattarshah \n email=n.shahm@gmail.com\n"
  mode '0644'
  user 'shahm'
  group 'shahm'
end
