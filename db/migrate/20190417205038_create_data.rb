class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|
      t.string :identifier
      t.integer :rownumber
      t.string :phone
      t.string :email
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end
