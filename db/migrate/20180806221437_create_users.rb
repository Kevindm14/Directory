class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :password
      t.string :email
      t.string :city
      t.string :state
      t.string :cellphone
      t.string :phone
      t.string :company

      t.timestamps
    end
  end
end
