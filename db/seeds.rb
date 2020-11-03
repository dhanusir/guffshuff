# Create few test users

5.times do |i|
  User.create(username: "User #{i+1}", password: 'user123')
end
