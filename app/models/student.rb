# coding: utf-8

class Student < ActiveRecord::Base
  attr_accessible :arrivalDate, :birthday, :country, :languages, :name, :passport, :pastDepartments, :university, :year, :photo, :study_approval, :request_form, :dorms_form, :status, :payment, :requests_attributes
  has_many :requests,  :dependent=>:destroy
  has_one :track,  :dependent=>:destroy
  accepts_nested_attributes_for :requests, :allow_destroy => true

  has_attached_file :photo
  has_attached_file :study_approval
  has_attached_file :request_form
  has_attached_file :dorms_form

  before_save :default_values

  def default_values
      self.status= "בטיפול" if !self.status
      self.payment= '0' if !self.payment
  end

  def age
    now = Time.now.utc.to_date
    now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def self.search(search, countrySearch, statusSearch)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else if countrySearch
           find(:all, :conditions => ['country LIKE ?', "#{countrySearch}"])
    else  if statusSearch
            find(:all, :conditions => ['status LIKE ?', "#{statusSearch}"])
    else
    find(:all)
      end
      end
    end
  end
end
