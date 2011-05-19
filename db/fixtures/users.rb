

#User.seed(:login, :email) do |s|

#  s.login = ""
#  s.first_name = ""
#  s.last_name = ""
#  s.name = ""
#  s.crypted_password = "c768475aeb22e861b22e23a557ccf9c2bfa38bff"
#  s.salt = "99c2ed488e1ef8560f9828702108f19dc14df169"
#  s.state = "active"
#  s.account_type = "seeker"

#end

#####################################################
## JOB SEEKERS
#####################################################
User.seed(:login, :email) do |s|

  s.login = "kirk"
  s.email = "kirkvq@gmail.com"
  s.first_name = "Kirk"
  s.last_name = "Quesnelle"
  s.name = "Kirk Quesnelle"
  s.crypted_password = "c768475aeb22e861b22e23a557ccf9c2bfa38bff"
  s.salt = "99c2ed488e1ef8560f9828702108f19dc14df169"
  s.state = "active"
  s.account_type = "seeker"

end

User.seed(:login, :email) do |s|

  s.login = "kelly"
  s.email = "kellysmith@websimcoe.com"
  s.first_name = "Kelly"
  s.last_name = "Smith"
  s.name = "Kelly Smith"
  s.crypted_password = "c768475aeb22e861b22e23a557ccf9c2bfa38bff"
  s.salt = "99c2ed488e1ef8560f9828702108f19dc14df169"
  s.state = "active"
  s.account_type = "seeker"

end

User.seed(:login, :email) do |s|

  s.login = "aydon"
  s.email = "aydonv@websimcoe.com"
  s.first_name = "Aydon"
  s.last_name = "Vachon"
  s.name = "Aydon Vachon"
  s.crypted_password = "c768475aeb22e861b22e23a557ccf9c2bfa38bff"
  s.salt = "99c2ed488e1ef8560f9828702108f19dc14df169"
  s.state = "active"
  s.account_type = "seeker"
end


#####################################################
# EMPLOYERS
#####################################################
User.seed(:login, :email) do |s|

  s.login = "googlehealth"
  s.email = "googlehealth@websimcoe.com"
  s.first_name = "Google"
  s.last_name = "Health"
  s.name = "Google Health"
  s.crypted_password = "c768475aeb22e861b22e23a557ccf9c2bfa38bff"
  s.salt = "99c2ed488e1ef8560f9828702108f19dc14df169"
  s.state = "active"
  s.account_type = "employer"

end

User.seed(:login, :email) do |s|

  s.login = "sunsport"
  s.email = "sunsport@websimcoe.com"
  s.first_name = "sunsport"
  s.last_name = "cosmetics"
  s.name = "Sunsport Cosmetics"
  s.crypted_password = "c768475aeb22e861b22e23a557ccf9c2bfa38bff"
  s.salt = "99c2ed488e1ef8560f9828702108f19dc14df169"
  s.state = "active"
  s.account_type = "employer"

end

User.seed(:login, :email) do |s|

  s.login = "gbaywellness"
  s.email = "gbaywellness@websimcoe.com"
  s.first_name = "Mike"
  s.last_name = "Jones"
  s.name = "Mike Jones"
  s.crypted_password = "c768475aeb22e861b22e23a557ccf9c2bfa38bff"
  s.salt = "99c2ed488e1ef8560f9828702108f19dc14df169"
  s.state = "active"
  s.account_type = "employer"

end






