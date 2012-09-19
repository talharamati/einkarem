# coding: utf-8

class Request < ActiveRecord::Base
  attr_accessible :beginDate, :department, :finishDate, :hospital, :status
  belongs_to :student

end
