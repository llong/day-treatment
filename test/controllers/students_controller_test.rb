require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { admitted: @student.admitted, allergies: @student.allergies, bowel_pattern: @student.bowel_pattern, classroom: @student.classroom, cps_involvement: @student.cps_involvement, current_health_provider: @student.current_health_provider, date_admitted: @student.date_admitted, diagnosis: @student.diagnosis, dob: @student.dob, hobbies: @student.hobbies, immunizations: @student.immunizations, legal_issues: @student.legal_issues, lives_with: @student.lives_with, medications: @student.medications, most_recent_physical_exam: @student.most_recent_physical_exam, name: @student.name, nurse: @student.nurse, observation: @student.observation, pharmacy: @student.pharmacy, phone: @student.phone, physician: @student.physician, psychiatrist: @student.psychiatrist, seizures: @student.seizures, sleeping_pattern: @student.sleeping_pattern, special_alerts: @student.special_alerts, specialists: @student.specialists, therapist: @student.therapist }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { admitted: @student.admitted, allergies: @student.allergies, bowel_pattern: @student.bowel_pattern, classroom: @student.classroom, cps_involvement: @student.cps_involvement, current_health_provider: @student.current_health_provider, date_admitted: @student.date_admitted, diagnosis: @student.diagnosis, dob: @student.dob, hobbies: @student.hobbies, immunizations: @student.immunizations, legal_issues: @student.legal_issues, lives_with: @student.lives_with, medications: @student.medications, most_recent_physical_exam: @student.most_recent_physical_exam, name: @student.name, nurse: @student.nurse, observation: @student.observation, pharmacy: @student.pharmacy, phone: @student.phone, physician: @student.physician, psychiatrist: @student.psychiatrist, seizures: @student.seizures, sleeping_pattern: @student.sleeping_pattern, special_alerts: @student.special_alerts, specialists: @student.specialists, therapist: @student.therapist }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
