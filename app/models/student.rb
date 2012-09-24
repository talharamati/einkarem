class Student < ActiveRecord::Base
  attr_accessible :arrival_date, :birthday, :country, :languages, :name, :passport, :past_departments, :university, :year, :photo, :study_approval, :request_form, :dorms_form, :status, :payment, :requests_attributes
  has_many :requests,  :dependent=>:destroy
  has_one :track,  :dependent=>:destroy
  accepts_nested_attributes_for :requests, :allow_destroy => true

  has_attached_file :photo
  has_attached_file :study_approval
  has_attached_file :request_form
  has_attached_file :dorms_form

  before_save :default_values

  def default_values
      self.status= I18n.t('students.statuses.treatment') if !self.status
      self.payment= '0' if !self.payment
  end



  def self.search(search, countrySearch, statusSearch)
    unless search.nil?
      find(:all, conditions => ['name LIKE ?', "%#{search}%"], :order => 'arrival_date')
    else
      unless countrySearch.nil?
        find(:all, :conditions => ['country LIKE ?', "#{countrySearch}"], :order => 'arrival_date')
      else
        unless statusSearch.nil?
          find(:all, :conditions => ['status LIKE ?', "#{statusSearch}"], :order => 'arrival_date')
        else
          find(:all, :conditions => ['status NOT LIKE ?', I18n.t('students.statuses.finished')], :order => 'arrival_date')
        end
      end
    end
  end
end
