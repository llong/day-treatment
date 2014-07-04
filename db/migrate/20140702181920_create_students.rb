class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :dob
      t.string :allergies
      t.string :special_alerts
      t.string :lives_with
      t.string :phone
      t.string :physician
      t.string :specialists
      t.string :immunizations
      t.string :most_recent_physical_exam
      t.text :sleeping_pattern
      t.text :bowel_pattern
      t.text :seizures
      t.string :current_health_provider
      t.text :diagnosis
      t.text :cps_involvement
      t.text :legal_issues
      t.text :hobbies
      t.text :observation
      t.string :date_admitted
      t.string :psychiatrist
      t.string :admitted
      t.string :therapist
      t.string :classroom
      t.string :pharmacy
      t.string :nurse
      t.text :medications

      t.timestamps
    end
  end
end
