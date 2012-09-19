class Resource < ActiveRecord::Base
  belongs_to :student
  attr_accessible :path, :type
end
