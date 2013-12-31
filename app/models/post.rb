class Post < ActiveRecord::Base
    #attr_accessible :body, :title
    
    has_many :comments
    
    validates :title, :body, presence: true
    validates :body, presence: true
end
