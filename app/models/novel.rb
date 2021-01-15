class Novel < ApplicationRecord
    has_many :comments, dependent: :destroy
end
