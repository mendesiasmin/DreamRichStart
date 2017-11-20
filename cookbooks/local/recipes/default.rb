#
# Cookbook:: dreamrich
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Run container exposing ports
execute 'clone front-end repository' do
  command 'git clone https://github.com/DreamRich/DreamRich.git'
  ignore_failure true
end

execute 'change branch to devel in backend' do
  command 'git checkout devel'
  cwd 'DreamRich'
end

execute 'clone api repository' do
  command 'git clone https://github.com/DreamRich/DreamRichJS.git'
  ignore_failure true
end

execute 'change branch to devel in front' do
  command 'git checkout devel'
  cwd 'DreamRichJS'
end

execute 'cp Dockerfile api' do
  command 'cp Dockerfile.api ../DreamRich/Dockerfile'
  cwd 'docker'
end

execute 'cp entrypoint api' do
  command 'cp entrypoint.sh.api ../DreamRich/entrypoint.sh'
  cwd 'docker'
end

execute 'cp Dockerfile front' do
  command 'cp Dockerfile.js ../DreamRichJS/Dockerfile'
  cwd 'docker'
end

execute 'cp entrypoint front' do
  command 'cp entrypoint.sh.js ../DreamRichJS/entrypoint.sh'
  cwd 'docker'
end

execute 'build' do
  command 'docker-compose build'
end

execute 'docker up' do
  command 'docker-compose up'
end
