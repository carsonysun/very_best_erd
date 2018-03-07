class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :venuebookmarks,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  has_many   :dishes,
             :through => :venuebookmarks,
             :source => :dish

  has_many   :users,
             :through => :venuebookmarks,
             :source => :user

  # Validations

end
