class CohortPhase < ApplicationRecord
  belongs_to :cohort
  belongs_to :recruitment_phase
end
