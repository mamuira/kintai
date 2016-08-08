class CreateKintais < ActiveRecord::Migration
  def change
    create_table :kintais do |t|
      t.date :date
      t.time :start_time
      t.time :finish_time
      t.time :resarch_time
      t.text :purpose
      t.text :reflection

      t.timestamps null: false
    end
  end
end
