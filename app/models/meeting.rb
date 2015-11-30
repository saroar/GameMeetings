class Meeting < ActiveRecord::Base
<<<<<<< HEAD
  has_one :venue
=======
  has_and_belongs_to_many :games
>>>>>>> games
end
