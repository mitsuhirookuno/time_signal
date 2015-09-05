# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

every '0 9 * * 1-5' do
  command 'cd ~/workspace/time_signal ; ./time_signal.rb SAY おはようございます！もうすぐ始業です'
  command 'cd ~/workspace/time_signal ; ./time_signal.rb WEATHER'
  command 'cd ~/workspace/time_signal ; ./time_signal.rb TRAIN'
end

every '0 19 * * 1-5' do
  command 'cd ~/workspace/time_signal ; ./time_signal.rb SAY お疲れ様です。もうすぐ終業です'
  command 'cd ~/workspace/time_signal ; ./time_signal.rb WEATHER'
  command 'cd ~/workspace/time_signal ; ./time_signal.rb TRAIN'
end