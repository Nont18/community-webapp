# config valid for current version and patch releases of Capistrano
lock "~> 3.18.0"

#set :application, "project_tracker" #"my_app_name"
#set :repo_url, "git@gitlab.com:ait_fsad-2023/team-6/emergency-webapp.git" #"git@example.com:me/my_repo.git"


set :application, "readit"
set :repo_url, "git@gitlab.com:ait_fsad-2023/team-6/emergency-webapp.git"

set :branch, ENV['BRANCH'] if ENV['BRANCH']

# set :passenger_restart_with_touch, true

# Deploy to the user's home directory
set :deploy_to, "/home/deploy/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5



# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "home/ubuntu/#{fetch :application}" #"/var/www/my_app_name"
#set :deploy_to, "home/ubuntu/emergency-webapp"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", 'config/master.key'

# Default value for linked_dirs is []
#append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'
#append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "vendor", "storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
# set :ssh_options, {
#   keys: ["/home/nont18/Downloads/Myserver.pem"],
#   forward_agent: false,
#   auth_methods: ["publickey"]
# }
