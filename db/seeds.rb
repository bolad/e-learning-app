#User.create!(email: 'stanley@gmail.com', password: 'password', password_confirmation: 'password')
user = User.new(
  email: 'admin@example.com',
  password: 'admin@example.com',
  password_confirmation: 'admin@example.com'
)
user.skip_confirmation!
user.save!

30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.first.id,
    short_description: Faker::Quote.famous_last_words,
    language: Faker::ProgrammingLanguage.name,
    level: 'Beginner',
    price: Faker::Number.between(from: 100, to: 300)
  }])
end