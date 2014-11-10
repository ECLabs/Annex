class AddDetailsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :employeeNumber, :integer
    add_column :employees, :middleName, :string
    add_column :employees, :cellPhone, :decimal
    add_column :employees, :workPhone, :decimal
    add_column :employees, :startDate, :date
    add_column :employees, :endDate, :date
    add_column :employees, :lastLogin, :date
    add_column :employees, :created_at, :date
    add_column :employees, :updated_at, :date
  end
end
