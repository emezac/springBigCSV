class CreateLoguploads < ActiveRecord::Migration[5.2]
  def change
    create_table :loguploads do |t|
      t.string :identifier
      t.string :filename
      t.string :filelocation
      t.datetime :date
      t.integer :version

      t.timestamps
    end
  end
end
