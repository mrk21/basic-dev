task :default => :playbook

desc 'Run ansible-playbook'
task :playbook do
  sh "ansible-playbook -K -i inventory.ini site.yml #{ENV['args']}"
end

desc 'Install/Upgrade Ansible'
task :ansible do
  sh "sudo easy_install pip"
  sh "sudo pip install -U ansible"
end
