class CreateMainEventFighters < ActiveRecord::Migration[6.1]
  def change
    create_table :main_event_fighters do |t|
      t.references :first_fighter, foreign_key: {to_table: "fighters"}
      t.references :second_fighter, foreign_key: {to_table: "fighters"}
      t.references :event
      t.timestamps
    end
  end
end
