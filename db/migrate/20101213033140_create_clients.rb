class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
