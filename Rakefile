task :default => :playbook

desc 'Run ansible-playbook'
task :playbook do
  tag_option = "-t #{ENV['t']}" if ENV['t']
  other_options = ENV['o']
  sh "ansible-playbook --ask-become-pass -i inventory.ini site.yml #{tag_option} #{other_options}"
end

desc 'Install/Upgrade Ansible'
task :ansible do
  sh "sudo easy_install pip"
  sh "sudo pip install -U ansible"
end

desc 'Export Karabiner settings'
task :karabiner do
  sh "/Applications/Karabiner.app/Contents/Library/bin/karabiner export > ./roles/karabiner/files/settings.sh"
end
