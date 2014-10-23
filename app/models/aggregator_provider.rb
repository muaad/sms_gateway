class AggregatorProvider < ActiveRecord::Base
  belongs_to :aggregator
  belongs_to :provider
end
