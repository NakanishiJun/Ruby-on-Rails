class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.text :plan_name

      t.timestamps
    end
  end
end
