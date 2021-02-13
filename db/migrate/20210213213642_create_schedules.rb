class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :fighter, null: false, foreign_key: true
      t.string :time

      t.timestamps
    end
  end
end
