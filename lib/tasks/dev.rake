task sample_data: :environment do
  user = User.new

  user.username = "alice"
  user.email = "alice@example.com"
  user.password = "password"
  user.save
end
