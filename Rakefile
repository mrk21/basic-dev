task :default => :playbook

desc 'Run ansible-playbook'
task :playbook => :ansible do
  sh "ansible-playbook -i inventory.ini site.yml #{ENV['args']}"
end

desc 'Install/Upgrade Ansible'
task :ansible do
  sh "sudo easy_install pip"
  sh "sudo pip install -U ansible"
end
