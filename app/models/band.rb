class Band < ApplicationRecord
  has_many :tunes, dependent: :destroy
end
