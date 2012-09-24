class RenameCapitalizedColumns < ActiveRecord::Migration
  def change
    rename_column :countries, :nameHeb, :name_heb
    rename_column :requests, :beginDate, :begin_date
    rename_column :requests, :finishDate, :finish_date
    rename_column :students, :arrivalDate, :arrival_date
    rename_column :students, :pastDepartments, :past_departments
    rename_column :tracks, :laundryBack, :laundry_back
    rename_column :tracks, :libraryBack, :library_back
    rename_column :tracks, :dormsC, :dorms_c
    rename_column :tracks, :paymentC, :payment_c
    rename_column :tracks, :laundryC, :laundry_c
    rename_column :tracks, :libraryC, :library_c
    rename_column :tracks, :laundryBackC, :laundry_back_c
    rename_column :tracks, :libraryBackC, :library_back_c
  end
end
