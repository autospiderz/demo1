class Client < ActiveRecord::Base
   attr_accessible :first_name, :last_name, :address, :phone_number, :email

   email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   
   validates :first_name, :presence => true
   
   validates :last_name, :presence => true
   
   validates :address, :presence => true
   
   validates :email, :presence => true

end
