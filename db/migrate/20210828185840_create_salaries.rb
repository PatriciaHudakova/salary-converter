class CreateSalaries < ActiveRecord::Migration[6.1]
  def change
    create_table :salaries do |t|
      t.float :yearly
      t.float :monthly
      t.float :daily
      t.float :hourly

      t.timestamps
    end
  end
end
