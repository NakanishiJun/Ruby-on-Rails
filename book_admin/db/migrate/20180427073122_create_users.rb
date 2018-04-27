class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :string
      t.string :password
      t.string :email
      t.boolean :admin

      t.timestamps
    end
  end
end