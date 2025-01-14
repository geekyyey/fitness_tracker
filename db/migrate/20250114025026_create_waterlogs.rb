class CreateWaterlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :waterlogs do |t|
      t.date :date
      t.integer :intake
      t.integer :goal

      t.timestamps
    end
  end
end
