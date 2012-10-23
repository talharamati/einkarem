class Track < ActiveRecord::Base
  belongs_to :student
  attr_accessible :dorms,
                  :dorms_c,
                  :got_dorms,
                  :got_dorms_c,
                  :laundry,
                  :laundry_back,
                  :laundry_back_c,
                  :laundry_c,
                  :library,
                  :library_back,
                  :library_back_c,
                  :library_c,
                  :payment,
                  :payment_c
end
