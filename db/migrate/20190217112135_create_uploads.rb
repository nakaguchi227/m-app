class CreateUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :uploads do |t|
      t.string :artist
      t.string :title
      t.string :comment
      t.string :file

      t.timestamps
    end
  end
end
