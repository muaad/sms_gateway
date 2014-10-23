class PriceList < ActiveRecord::Base
  belongs_to :credits
  belongs_to :aggregator
  belongs_to :bind_detail
end
