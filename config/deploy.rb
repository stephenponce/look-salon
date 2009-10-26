set :application, "thelooksalon"
set :user, "thelookadmin"
set :domain, "penguin.dreamhost.com"
set :applicationdir, "/home/thelookadmin/thelook.dreamhosters.com/looksalon"

default_run_options[:pty] = true

set :scm, :git
set :repository,  " git@github.com:stephenponce/look-salon.git"
set :branch, 'master'
set :scm_verbose, true
set :git_shallow_clone, 1
set :deploy_to, applicationdir
set :deploy_via, :remote_cache

role :web, domain                      # Your HTTP server, Apache/etc
role :app, domain                      # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end

set :use_sudo, false
set :chmod755, "app config db lib public vendor script script/* public/disp*"
