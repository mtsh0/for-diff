require File.expand_path(File.dirname(__FILE__) + "/environment")
set :output, 'log/crontab.log'
set :environment, :production
env :PATH, ENV['PATH']

every 1.hours do
  rake 'db:migrate:reset'
  rake 'db:seed'
end

#every 1.day, at:'10:30 am' do
#  rake 'db:migrate:reset RAILS_ENV=production'
#  rake 'db:seed RAILS_ENV=production'
#end
