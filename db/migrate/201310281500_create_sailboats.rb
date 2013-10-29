

class CreateSailboats < ActiveRecord::Migration
  def change
    create_table :sailboats do |t|
      t.string  :name
      t.integer :length

      t.timestamps
    end
  end
end