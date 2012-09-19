class Track < ActiveRecord::Base
  belongs_to :student
  attr_accessible :dorms, :dormsC, :laundry, :laundryBack, :laundryBackC, :laundryC, :library, :libraryBack, :libraryBackC, :libraryC, :payment, :paymentC
end
