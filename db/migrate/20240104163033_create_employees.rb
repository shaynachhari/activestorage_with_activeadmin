class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :e_name
      t.string :e_title

      t.timestamps
    end
  end
end
