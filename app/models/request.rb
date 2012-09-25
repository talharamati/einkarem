class Request < ActiveRecord::Base
  attr_accessible :begin_date, :department, :finish_date, :hospital, :status
  belongs_to :student

  before_create do
    self.status = 1 # 1 == pending
  end
end
