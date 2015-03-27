class Goal < ActiveRecord::Base
  belongs_to :user
    has_many :goals_and_lists
    has_many :lists, through: :goals_and_lists
end
