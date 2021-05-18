class Link < ApplicationRecord
    # This ensures that each link MUST be associated to a user
    belongs_to :user
    acts_as_votable
end
