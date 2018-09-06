roles = ['teacher', 'ta', 'student']

10.times do |i|
  course = Course.create(name: "course_#{i}")

  10.times do |j|
    user = User.create(
      first_name: "first_#{i}_#{j}",
      last_name: "last_#{i}_#{j}"
    )

    Enrollment.create(
      course_id: course.id,
      user_id: user.id,
      role: roles.sample
    )
  end
end
