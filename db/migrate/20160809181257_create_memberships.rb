class CreateMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :memberships do |t|
      t.references :user, index: true, foreign_key: true
      t.references :competition, index: true, foreign_key: true

      t.timestamps
    end
  end
end
