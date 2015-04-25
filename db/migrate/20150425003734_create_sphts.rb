class CreateSphts < ActiveRecord::Migration
  def change
    create_table :sphts do |t|
      t.string :title
      t.text :description
      t.string :file

      t.timestamps
    end
  end
end
