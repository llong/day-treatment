json.array!(@students) do |student|
  json.extract! student, :id, :name, :dob, :allergies, :special_alerts, :lives_with, :phone, :physician, :specialists, :immunizations, :most_recent_physical_exam, :sleeping_pattern, :bowel_pattern, :seizures, :immunizations, :current_health_provider, :diagnosis, :cps_involvement, :legal_issues, :hobbies, :observation, :admitted, :date_admitted, :therapist, :psychiatrist, :classroom, :pharmacy, :nurse, :medications
  json.url student_url(student, format: :json)
end
