class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :title
      t.timestamps null: false
    end
  end
end
