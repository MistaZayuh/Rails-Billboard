class Tune < ApplicationRecord
  belongs_to :band
  belongs_to :billboard, optional: true
end
