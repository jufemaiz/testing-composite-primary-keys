class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.references  :device
      t.datetime    :recorded_at
      t.float       :value
    end
  end
end
