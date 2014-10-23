class AggregatorCountry < ActiveRecord::Base
  belongs_to :aggregator
  belongs_to :country
end
