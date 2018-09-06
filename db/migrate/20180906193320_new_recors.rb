class NewRecors < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :user_id
      t.integer :tank_id
      
      t.float :nh4
      t.float :no2
      t.float :no3
      t.float :ph
      t.float :gh
      t.float :kh
      
      t.datetime :custom_date
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
