class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :tittle
      t.date :startday
      t.date :endday
      t.boolean :allday
      t.text :schedulememo

      t.timestamps
    end
  end
end
