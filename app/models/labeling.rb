class Labeling < ApplicationRecord
  belongs_to :product, :inverse_of => :labelings
  belongs_to :label, :inverse_of => :labelings

end
