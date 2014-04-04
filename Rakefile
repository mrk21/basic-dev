task :default do
  sh "ansible-playbook -i inventory.ini site.yml #{ENV['args']}"
end
