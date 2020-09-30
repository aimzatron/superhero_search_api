class Search < ActiveRecord::Base
  validates_presence_of :criteria
  validates_uniqueness_of :criteria
end
