class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :venuebookmarks,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
