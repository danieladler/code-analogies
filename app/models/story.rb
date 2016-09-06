class Story < ApplicationRecord
  validates :technology, :comparison, :explanation, presence: true

  def self.random_home_story
    self.all.sample
  end

end
