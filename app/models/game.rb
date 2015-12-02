class Game < ActiveRecord::Base
  validates :title, :description, presence: true
  has_and_belongs_to_many :meetings
end
