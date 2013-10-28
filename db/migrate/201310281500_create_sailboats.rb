

class CreateSailboats < ActiveRecord::Migration
  def change
    create_table :sailboats do |header|
      header.string  :name
      header.integer :length
      header.integer :height
      header.integer :weight
    end
  end
end