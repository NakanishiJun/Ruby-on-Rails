class CreateCustomerServices < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_services do |t|
      t.integer :customer_id
      t.date :deal_date
      t.integer :staff_id
      t.text :issue

      t.timestamps
    end
  end
end
