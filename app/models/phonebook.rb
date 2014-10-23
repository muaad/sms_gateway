class Phonebook < ActiveRecord::Base
  belongs_to :group
  belongs_to :country
end
