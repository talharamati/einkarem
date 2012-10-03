class RefHospital < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  before_save do
    self.name.gsub!('&quot;', "''") # unescape quotes
  end

end
