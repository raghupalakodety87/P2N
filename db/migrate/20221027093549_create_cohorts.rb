class CreateCohorts < ActiveRecord::Migration[7.0]
  def change
    create_table :cohorts do |t|
      t.string :d_name
      t.string :d_corhort_id

      t.timestamps
    end
  end
end
