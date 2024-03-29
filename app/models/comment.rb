class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates :body, presence: true
  validates :email, presence: true
  validates :name, presence: true
end
