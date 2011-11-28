#Required variables
set :application, "forsythgardens.com"
set :repository,  "http://mojotech.unfuddle.com/svn/mojotech_forsythgardens"

#Optional variables
set :user, "andalucien"
set :use_sudo, false
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :remote_cache

#Roles
role :app, "www.forsythgardens.com"
role :web, "www.forsythgardens.com"
role :db,  "www.forsythgardens.com", :primary => true

#For mod_rails
namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

after "deploy", "deploy:cleanup"
