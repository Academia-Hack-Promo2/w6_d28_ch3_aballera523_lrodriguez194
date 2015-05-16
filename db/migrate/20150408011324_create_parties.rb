class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :date, null: false
      t.string :reservation, null: false

      t.timestamps null: false
    end
  end
end
