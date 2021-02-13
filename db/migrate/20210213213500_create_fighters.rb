class CreateFighters < ActiveRecord::Migration[6.1]
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :style
      t.string :fighting_record

      t.timestamps
    end
  end
end
