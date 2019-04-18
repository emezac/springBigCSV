class CreateErrorlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :errorlogs do |t|
      t.string :identifier
      t.integer :rownumber
      t.text :description

      t.timestamps
    end
  end
end
