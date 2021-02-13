class CreateChannels < ActiveRecord::Migration[6.1]
  def change
    create_table :channels do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :platform, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
