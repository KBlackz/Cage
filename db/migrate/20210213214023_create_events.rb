class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :platform, null: false, foreign_key: true
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
