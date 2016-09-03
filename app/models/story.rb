class Story < ApplicationRecord

  def self.random_home_story
    self.all.sample
  end

end
