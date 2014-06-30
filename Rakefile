task :default => :playbook

desc 'Run ansible-playbook'
task :playbook do
  tag_option = "-t #{ENV['t']}" if ENV['t']
  sh "ansible-playbook -K -i inventory.ini site.yml #{tag_option}"
end

desc 'Install/Upgrade Ansible'
task :ansible do
  sh "sudo easy_install pip"
  sh "sudo pip install -U ansible"
end
