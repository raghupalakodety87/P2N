class CreateRecruitmentPhases < ActiveRecord::Migration[7.0]
  def change
    create_table :recruitment_phases do |t|
      t.string :phase_name

      t.timestamps
    end
  end
end
