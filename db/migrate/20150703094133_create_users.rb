class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :password
      t.timestamps null:false
    end
  end
end
