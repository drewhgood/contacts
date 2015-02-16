

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
      p contact
      p @@contacts
      db = ContactDatabase.new
      ContactDatabase.write_to_file(contact)
      #p @@contacts.last.id
    end

     def list
      # @@contacts.each do |contacts|
      #  p "#{contacts.name} (#{contacts.email})"
      # end
   
      ContactDatabase.read_from_file
      

    end
 
 
    # def find(index)
    #   # TODO: Will find and return contact by index
    # end
 
    # def all
    #   # TODO: Return the list of contacts, as is
    # end
    
    # def show(id)
    #   # TODO: Show a contact, based on ID
    # end
    
  end
 
end


