class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.datetime :password_digest
      t.string :confirmed_at

      t.timestamps
    end
  end
end
