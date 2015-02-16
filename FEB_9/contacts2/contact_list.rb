require_relative 'contact'
require_relative 'contact_database'
require 'pry'

arg1, arg2 = ARGV

case arg1
when "help"
  print "Here is a list of available commands:
    new  - Create a new contact
    list - List all contacts
    show - Show a contact
    find - Find a contact\n"
when "new"
  print "Enter Email: "
  email = STDIN.gets.chomp 
  if Contact.check_for_duplicates(email)
    p 'Contact already exists'
  else
    print "Enter Full Name: "
    name = STDIN.gets.chomp
    contact = Contact.create(name,email)
  end
when "list"
  Contact.list
when "find"
  Contact.find(arg2)
when "show"
  Contact.show(arg2)
else
  puts "nothing happened"
end


class Application




end