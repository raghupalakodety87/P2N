class Cohort < ApplicationRecord
  has_many :cohort_phases
  has_many :recruitment_phases, through: :cohort_phases
end
