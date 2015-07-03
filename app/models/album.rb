class Album < ActiveRecord::Base
  # Remember to create a migration!
  has_many :photos
  belongs_to :user

  def self.default(user_id)
    self.create(name: "default", user_id: user_id)
  end
end
