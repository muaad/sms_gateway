class NetworkContact < ActiveRecord::Base
  belongs_to :phonebook
  belongs_to :network
end
