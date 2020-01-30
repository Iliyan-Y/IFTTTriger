require 'httparty'

def send_notification(event_name, your_key)

  link = "https://maker.ifttt.com/trigger/#{event_name}/with/key/#{your_key}"

  HTTParty.get(link)

  puts "Notification Send"
end

print "Name of the evnet ? :> "
name = gets.chomp
print "Key ? :> "
key = gets.chomp

send_notification(name, key)
