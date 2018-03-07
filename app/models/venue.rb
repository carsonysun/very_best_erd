class Venue < ApplicationRecord
  # Direct associations

  has_many   :venuebookmarks,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
