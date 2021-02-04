class Contract < ApplicationRecord
  validates_presence_of :first_name, 
                        :last_name, 
                        :email, 
                        :address, 
                        :phone_number, 
                        :duration, 
                        :price

  
end
