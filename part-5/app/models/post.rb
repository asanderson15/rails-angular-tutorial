class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 1, maximum: 250 }
  validates :contents, presence: true
end
