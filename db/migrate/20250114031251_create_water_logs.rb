class CreateWaterLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :water_logs do |t|
      t.date :date
      t.integer :intake
      t.integer :goal

      t.timestamps
    end
  end
end
