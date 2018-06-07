class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.integer :distributor_id
      t.text :customer_name
      t.text :customer_rep
      t.text :customer_mail
      t.integer :plan_id
      t.integer :platform_id
      t.text :hosting_account
      t.date :agreement_data
      t.text :eLM_domain
      t.text :elm_admin_id
      t.text :elm_admin_id
      t.text :elm_admin_pw
      t.text :elm_user_id
      t.text :elm_user_pw
      t.text :cf_id
      t.text :cf_pw
      t.text :server_info
      t.text :mail_server_info
      t.text :sql_server_info
      t.text :dns_info
      t.text :option_4
      t.text :option_5
      t.text :option_6
      t.text :option_7
      t.text :option_8
      t.text :option_9
      t.text :option_10

      t.timestamps
    end
  end
end
