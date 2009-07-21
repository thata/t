#! /usr/bin/ruby -Ku

require 'optparse'
require 'rubygems'
require 'twitter'
require 'yaml'

$quote = false

def update(t, msg, quote)
  if quote 
    msg = '"' + msg + '"'
  end
  # p msg
  t.update msg 
end

def show_timeline(t, count)
  name_and_text = t.friends_timeline(:count => count).map {|e|
    [e.user.screen_name, e.text]
  }
  name_and_text.each do |name, text|
    puts "#{name}: #{text}"
  end
end

def load_mail(trc)
  trc["account"]["mail"]
end

def load_pass(trc)
  trc["account"]["pass"]
end

opt = OptionParser.new
opt.on("-q") { $quote = true }
args = opt.order!(ARGV)

trc = YAML::load_file(ENV["HOME"] + "/.trc")
mail = load_mail(trc)
pass = load_pass(trc)
auth = Twitter::HTTPAuth.new mail, pass
t = Twitter::Base.new auth

file_name = $0.split("/").pop
count = file_name.size * 10
msg = args.join " "

if msg and msg.empty? == false
  update(t, msg, $quote)
else
  show_timeline(t, count)
end
