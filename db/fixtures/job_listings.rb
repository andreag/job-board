
def random_job_state
  num = (((rand * 100) % 2) + 1).to_i
  job_state = case num
    when 1 then "pending"
    when 2 then "active"
    when 3 then "inactive"
    when 4 then "deleted"
  end
  job_state
end  


def random_deadline
  num = (((rand * 100) % 3) + 1).to_i
  Date.today + ((rand * 100 % 4).to_i).month 
end

def random_country
  num = (((rand * 100) % 11) + 1).to_i
  Country.find num
end

Job.seed(:id) do |s|
  s.employer_id = 1 
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "Head Nurse"
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 3500000
  s.salary_high = 5500000 
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(10)
end


Job.seed(:id) do |s|
  s.employer_id = 2 
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "New Nursing Position"  
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 3000000
  s.salary_high = 4000000 
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(9)
end

Job.seed(:id) do |s|
  s.employer_id = 3  
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "Family Doctor Position" 
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 10000000 
  s.salary_high = 13000000
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(8)
end

Job.seed(:id) do |s|
  s.employer_id = 3  
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "Family Doctor Position" 
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 10000000 
  s.salary_high = 13000000
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(7)
end

Job.seed(:id) do |s|
  s.employer_id = 3  
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "Family Doctor Position" 
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 10000000 
  s.salary_high = 13000000
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(6)
end



Job.seed(:id) do |s|
  s.employer_id = 2 
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "Plastic Surgeon" 
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 9000000 
  s.salary_high = 11000000 
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(5)
end

Job.seed(:id) do |s|
  s.employer_id = 3 
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "Dental Assistant" 
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 4000000 
  s.salary_high = 4500000 
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(4)
end

Job.seed(:id) do |s|
  s.employer_id = 1 
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "Dentist (with bonus)"
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 8000000 
  s.salary_high = 9500000 
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(3)
end

Job.seed(:id) do |s|
  s.employer_id = 2 
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "Starting Dental Assistant" 
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 3500000 
  s.salary_high = 4500000 
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(2)
end

Job.seed(:id) do |s|
  s.employer_id = 1 
  s.profession_id = ((rand * 100) % 86).to_i # a random profession 
  s.state = random_job_state
  s.activated_at = Date.today - ((rand * 100) % 20).days
  s.title = "Costmetic Dentist - Smile designer :)" 
  s.qualifications = "Must haves: at volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.apply_instructions = "Maecenas tincidunt scelerisque interdum. Nunc auctor, turpis vitae malesuada lobortis, lorem nibh tempus tellus, sit amet cursus justo nibh congue diam. Nulla interdum, eros eu venenatis pretium, magna justo convallis eros, quis lobortis purus neque id urna. Phasellus laoreet urna gravida nulla sagittis vel convallis ante cursus."
  s.salary_low = 10000000 
  s.salary_high = 12000000 
  s.deadline = random_deadline 
  s.description = "Aliquam erat volutpat. Curabitur risus quam, facilisis fermentum faucibus at, facilisis id elit. Curabitur rhoncus magna a erat faucibus lacinia. Nam sed quam nulla, et eleifend odio. Ut elementum, mauris id iaculis dictum, orci nisi feugiat neque, id commodo ipsum urna ut neque. Duis auctor mauris vel neque semper pulvinar ultrices lacus pulvinar. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ligula purus, semper vitae tincidunt sed, varius nec est. Morbi in justo ac ipsum tincidunt sagittis. Nunc tincidunt nisl non ipsum pretium nec luctus tellus aliquet. Ut hendrerit condimentum ipsum a condimentum. Fusce at metus orci. In posuere rutrum lectus et sagittis. Vestibulum vel feugiat ligula. "
  s.address = Address.find(1)
end
