class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :address
      t.string :date
      t.string :reservation

      t.timestamps null: false
    end
  end
end
