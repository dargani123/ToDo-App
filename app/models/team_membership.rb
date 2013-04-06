class TeamMembership < ActiveRecord::Base
  belongs_to :user
  belongs_to :team
  attr_accessible :user_id, :team_id

  #validates :user, :uniqueness => { :scope => :team, :message => "Already part of this team" } 
end
