class Layer < ApplicationRecord
  belongs_to :category

  def self.keywords(keywords)
    where("title LIKE ? OR year LIKE? OR owner LIKE? OR format LIKE? OR position LIKE?","%#{keywords}%","%#{keywords}%","%#{keywords}%","%#{keywords}%","%#{keywords}%")    
  end
end
