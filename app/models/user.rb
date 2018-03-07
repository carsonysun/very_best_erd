class User < ApplicationRecord
  # Direct associations

  has_many   :venuebookmarks,
             :class_name => "Bookmark",
             :dependent => :destroy

  # Indirect associations

  has_many   :venues,
             :through => :venuebookmarks,
             :source => :venue

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
