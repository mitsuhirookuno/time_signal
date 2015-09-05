#!/usr/bin/env ruby
require "slack"
require "dotenv"

exit

exit if HolidayJp.holiday?(Date.today)

Dotenv.load
Slack.configure do |config|
  config.token = ENV['SLACK_API_TOKEN']
end

case ARGV.first
when 'TRAIN' 
  Slack.chat_postMessage(text: 'baymax 電車', channel: '#server-side-team', as_user: "baymax")
when 'WEATHER' 
  Slack.chat_postMessage(text: 'baymax 天気 東京', channel: '#server-side-team', as_user: "baymax")
when 'SAY'
  Slack.chat_postMessage(text: ARGV[1], channel: '#server-side-team') unless ARGV[1].nil?
else
end