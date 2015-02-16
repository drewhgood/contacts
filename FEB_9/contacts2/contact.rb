

class Contact

  @@contacts = []
 
  attr_accessor :name, :email
 
  def initialize(name, email)
    # TODO: assign local variables to instance variables
    @name = name
    @email = email
    #incriment id after each new contact is created
  end
 
  def to_s
    # TODO: return string representation of Contact
  end
 
  ## Class Methods
  class << self
    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      contact = Contact.new(name, email)
      @@contacts << contact
      db = ContactDatabase.new
      ContactDatabase.write_to_file(contact)
      #p @@contacts.last.id
    end

     def list
        all_contacts = ContactDatabase.read_from_file
        all_contacts.each do |contacts|
          p " #{contacts[0]}: #{contacts[1]} (#{contacts[2]})"  
        end
    end
 
 
    def show(index)
        all_contacts = ContactDatabase.read_from_file
        all_contacts.each do |contacts|
          if contacts[0] == index
            p " #{contacts[0]}: #{contacts[1]} (#{contacts[2]})" 
          end 
        end
    end
 
    # def all
    #   # TODO: Return the list of contacts, as is
    # end
    
    def find(search)
       all_contacts = ContactDatabase.read_from_file
        all_contacts.each do |contacts|
          if contacts[1] =~ /#{search}/i or contacts[2] =~ /#{search}/i
            p " #{contacts[0]}: #{contacts[1]} (#{contacts[2]})" 
          end 
        end
    end

    def check_for_duplicates(search)
       all_contacts = ContactDatabase.read_from_file
        all_contacts.each do |contacts|
          if contacts[2] =~ /#{search}/i
            true
          end 
        end
    end
    
  end
 
end

