module Voteable

  def self.included(base)
    base.class_eval do
      has_many :votes, :as => :voteable, :dependent => :destroy
    end
  end

  #return the vote issued by the ( logined ) user
  def vote(user)
    self.votes.where(:user_id => user.id).first
  end

end
