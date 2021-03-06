# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'myapp'
set :repo_url, 'https://github.com/vitaha1978/teplo.git'
set :deploy_to, '/home/deploy/myapp'
set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do
  desc 'Restart application'
    task :restart do
      on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end
  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'

end
