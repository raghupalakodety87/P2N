class RecruitmentPhase < ApplicationRecord
  has_many :cohort_phases
  has_many :cohort, through: :cohort_phases
end
