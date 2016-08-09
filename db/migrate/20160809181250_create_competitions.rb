class CreateCompetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :competitions do |t|
      t.string :title
      t.string :start_date
      t.string :end_date
      t.string :info

      t.timestamps
    end
  end
end
