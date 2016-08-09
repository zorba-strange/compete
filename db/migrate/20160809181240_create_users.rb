class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :profile_url
      t.string :bio

      t.timestamps
    end
  end
end
