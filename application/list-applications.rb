# frozen_string_literal: true

require 'dotenv/load'
require 'nexmo'

NEXMO_API_KEY = ENV['NEXMO_API_KEY']
NEXMO_API_SECRET = ENV['NEXMO_API_SECRET']

client = Nexmo::Client.new(
  api_key: NEXMO_API_KEY,
  api_secret: NEXMO_API_SECRET
)

response = client.applications_v2.list

response._embedded.applications.each do |application|
  puts "#{application.name}: #{application.id}"
end