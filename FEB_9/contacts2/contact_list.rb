require_relative 'contact'
require_relative 'contact_database'

arg1, arg2 = ARGV

case arg1
when "help"
  print "Here is a list of available commands:
    new  - Create a new contact
    list - List all contacts
    show - Show a contact
    find - Find a contact\n"
when "new"
#when "new"
  print "Enter name of contact: "
  name = STDIN.gets.chomp
  print "Enter email of contact: "
  email = STDIN.gets.chomp 
  contact = Contact.create(name,email)
when "list"
  Contact.list
# when "show"
#   Contact.show(arg2,filename)
when "find"
  Contact.find(arg2)
else
  puts "nothing happened"
end


class Application




end