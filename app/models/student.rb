class Student < ActiveRecord::Base
  attr_accessible :arrival_date,
                  :birthday,
                  :country,
                  :languages,
                  :name,
                  :passport,
                  :past_departments,
                  :university,
                  :year,
                  :photo,
                  :study_approval,
                  :request_form,
                  :dorms_form,
                  :status,
                  :payment,
                  :requests_attributes

  default_scope order: 'arrival_date'

  has_many :requests,  :dependent=>:destroy
  has_one :track,  :dependent=>:destroy
  accepts_nested_attributes_for :requests, :allow_destroy => true

  has_attached_file :photo,
                    :storage => :dropbox,
                    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
                    :dropbox_options => {
                        :path => proc { "studex-einkarem/files/#{id}/photo_#{photo.original_filename}" },
                        :unique_filename => true
                    }
  has_attached_file :study_approval,
                    :storage => :dropbox,
                    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
                    :dropbox_options => {
                        :path => proc { "studex-einkarem/files/#{id}/studyapproval_#{study_approval.original_filename}" },
                        :unique_filename => true
                    }
  has_attached_file :request_form,
                    :storage => :dropbox,
                    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
                    :dropbox_options => {
                        :path => proc { "studex-einkarem/files/#{id}/requestform_#{request_form.original_filename}" },
                        :unique_filename => true
                    }
  has_attached_file :dorms_form,
                    :storage => :dropbox,
                    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
                    :dropbox_options => {
                        :path => proc { "studex-einkarem/files/#{id}/dormsform_#{dorms_form.original_filename}" },
                        :unique_filename => true
                    }

  before_save :default_values

  def default_values
      self.status= 1 if !self.status # 1 == treatment
      self.payment= '0' if !self.payment
  end



  def self.search(search, countrySearch, statusSearch)
    unless search.blank?
      #find(:all, conditions: ['name LIKE ?', "%#{search}%"], :order => 'arrival_date')
      where{{name.matches => "%#{search}%"}}
    else
      unless countrySearch.blank?
        #find(:all, :conditions => ['country = ?', "#{countrySearch}"], :order => 'arrival_date')
        where(country: countrySearch)
      else
        unless statusSearch.blank?
          #find(:all, :conditions => ['status LIKE ?', "#{statusSearch}"], :order => 'arrival_date')
          where(status: statusSearch)
        else
          #find(:all, :conditions => ['status NOT LIKE ?', I18n.t('students.statuses.finished')], :order => 'arrival_date')
          where{{status.not_eq => 4}} # 4 == finished
        end
      end
    end
  end
end
