class CreateCohortPhases < ActiveRecord::Migration[7.0]
  def change
    create_table :cohort_phases do |t|
      t.bigint :cohort_id
      t.bigint :recruitment_phase_id

      t.timestamps
    end
  end
end
