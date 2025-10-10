class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name, null: false, unique: true
      t.float :height, null: false
      t.float :weight, null: false

      t.timestamps
    end
  end
end
