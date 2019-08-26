class Tune < ApplicationRecord
  belongs_to :band, optional: false
  belongs_to :billboard, optional: true
end
