class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstName
      t.string :lastName
      t.string :title
      t.string :experienceLevel

      t.timestamps
    end
  end
end
