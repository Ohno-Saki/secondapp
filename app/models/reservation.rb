class Reservation < ApplicationRecord
  belongs_to:room
  has_many:users, through: :authorizations
  has_many:authorizations
  
   def date
    (self.finish_day - self.start_day).to_int
    end
  
  def date_num
    (self.finish_day - self.start_day).to_int * self.number_of_people
  end

    
  
  
  
  
end
