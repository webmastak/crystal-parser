require "http/client"
require "modest"
require "uri"

if ARGV.empty?
  puts "Error: empty address site"
  exit 1
end

if ARGV.size == 1
  tipe = "links"
  tag = "a"
  att = "href"
  host = ARGV[0]
else
  tipe = "images"
  tag = "img"
  att = "src"
  host = ARGV[1]
end

unless Dir.exists?("data")
  Dir.mkdir("data")
end

uri = URI.parse(host)
response = HTTP::Client.get(host)
Myhtml::Parser.new(response.body).css(tag).each do |node|
  File.open("data/#{uri.host}-#{tipe}-#{Time.now.to_s("%Y-%m-%d")}", "a") do |file| 
    string = node.attributes[att]? 
    outline = string.to_s.includes?(host) ? "#{string}\n" : "#{host}#{string}\n"
    file << outline
  end
end

