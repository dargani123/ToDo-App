class Project < ActiveRecord::Base
  attr_accessible :text, :title, :team_id
  has_many :items
  belongs_to :team
end
