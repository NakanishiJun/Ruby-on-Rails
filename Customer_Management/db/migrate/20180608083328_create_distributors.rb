class CreateDistributors < ActiveRecord::Migration[5.2]
  def change
    create_table :distributors do |t|
      t.text :distributor_name
      t.text :distributor_rep
      t.integer :distributor_rep_tel
      t.text :distributor_rep_mail

      t.timestamps
    end
  end
end
