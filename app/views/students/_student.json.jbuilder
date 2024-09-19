json.extract! student, :id, :name, :school_email, :major, :minor, :graduation_date, :bio, :image, :created_at, :updated_at
json.url student_url(student, format: :json)
