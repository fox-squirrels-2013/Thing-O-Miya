

class CreateSailboats < ActiveRecord::Migration
  def change
    create_table :sailboats do |t|
      t.string  :name
      t.integer :length
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end