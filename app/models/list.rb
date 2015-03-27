class List < ActiveRecord::Base
  belongs_to :user
    has_many :goals
    has_many :items, dependent: :destroy
end
