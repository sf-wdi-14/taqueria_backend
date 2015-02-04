class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      t.string :sauce
      t.string :meat
      t.string :vegetable

      t.timestamps null: false
    end
  end
end
