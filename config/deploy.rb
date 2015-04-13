# config valid only for current version of Capistrano
lock '3.4.0'

<<<<<<< HEAD
set :application, 'helloWorld'
set :repo_url, 'git@github.com:andycom12000/eecsite.git'
=======
#ssh-add
set :application, 'helloWorld'
set :repo_url, 'git@github.com:andycom12000/eecs.git'
>>>>>>> 95c64ec3b8489a2e2850ef549fd4583fbd7fe482

# Default branch is :master
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
<<<<<<< HEAD
set :deploy_to, '/usr/home/andy/helloWorld'
=======
set :deploy_to, '/home/deploy/helloWorld'
>>>>>>> 95c64ec3b8489a2e2850ef549fd4583fbd7fe482

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
<<<<<<< HEAD
#set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_files, %w{config/databse.yml config/secrets.yml}
=======
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
>>>>>>> 95c64ec3b8489a2e2850ef549fd4583fbd7fe482

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
