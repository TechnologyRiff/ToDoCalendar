class List < ActiveRecord::Base
  belongs_to :user
    has_many :items, dependent: :destroy
    has_many :goals_and_lists
    has_many :goals, through: :goals_and_lists
end
