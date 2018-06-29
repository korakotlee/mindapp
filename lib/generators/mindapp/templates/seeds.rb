unless User.where(code:"admin").exists?
  User.create! :provider => "simple_authentication",
    :code => "admin",
    :email => "admin@test.com",
    :role => "M,A,D",
    :password => "secret",
    :password_confirmation => "secret"
end
# unless Identity.where(code:"admin").exists?
#   identity= Identity.create :code => "admin", :email => "admin@test.com", :password => "secret",
#     :password_confirmation => "secret"
#   User.create :provider => "identity", :uid => identity.id.to_s, :code => identity.code,
#     :email => identity.email, :role => "M,A,D", :identity => identity
# end
