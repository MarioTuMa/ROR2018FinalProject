class CreateColleges < ActiveRecord::Migration[5.1]
  require 'csv'
  def change
    create_table :colleges do |t|
      t.string :name
      t.boolean :private
      t.timestamps
    end
  end
end
