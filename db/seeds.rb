5.times do
    User.create(email: Faker::Internet.email)
end

5.times do 
    KpopGroup.create(group: Faker::Kpop.iii_groups, member: Faker::Name.first_name, gender: Faker::Demographic.sex, height: Faker::Demographic.height, user_id: 1)
end
5.times do 
    KpopGroup.create(group: Faker::Kpop.iii_groups, member: Faker::Name.first_name, gender: Faker::Demographic.sex, height: Faker::Demographic.height, user_id: 2)
end
5.times do 
    KpopGroup.create(group: Faker::Kpop.iii_groups, member: Faker::Name.first_name, gender: Faker::Demographic.sex, height: Faker::Demographic.height, user_id: 3)
end

5.times do 
    KpopGroup.create(group: Faker::Kpop.iii_groups, member: Faker::Name.first_name, gender: Faker::Demographic.sex, height: Faker::Demographic.height, user_id: 4)
end
5.times do 
    KpopGroup.create(group: Faker::Kpop.iii_groups, member: Faker::Name.first_name, gender: Faker::Demographic.sex, height: Faker::Demographic.height, user_id: 5)
end




# Faker::Name.first_name   
# Faker::Kpop.iii_groups 
# Faker::Demographic.height
# Faker::Demographic.sex 
   