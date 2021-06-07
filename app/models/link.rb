class Link < ApplicationRecord
    # This ensures that each link MUST be associated to a user
    belongs_to :user
    acts_as_votable
    # Add association to the comments table. Link has many comments
    has_many :comments
end
