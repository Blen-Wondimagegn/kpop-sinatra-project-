5.times do
    User.create(email: Faker::Internet.email)
end

5.times do 
    KpopGroup.create(group_name: Faker::Kpop.iii_groups, member: Faker::Name.name, gender: Faker::Demographic.sex, height: Faker::Demographic.height(unit: :imperial), fav_quote:Faker::Quotes::Shakespeare.hamlet_quote, user_id: 1)
end

5.times do 
    KpopGroup.create(group_name: Faker::Kpop.iii_groups, member: Faker::Name.name, gender: Faker::Demographic.sex, height: Faker::Demographic.height(unit: :imperial), fav_quote:Faker::Quotes::Shakespeare.hamlet_quote, user_id: 2)
end

5.times do 
    KpopGroup.create(group_name: Faker::Kpop.iii_groups, member: Faker::Name.name, gender: Faker::Demographic.sex, height: Faker::Demographic.height(unit: :imperial), fav_quote:Faker::Quotes::Shakespeare.hamlet_quote, user_id: 3)
end

5.times do 
    KpopGroup.create(group_name: Faker::Kpop.iii_groups, member: Faker::Name.name, gender: Faker::Demographic.sex, height: Faker::Demographic.height(unit: :imperial), fav_quote:Faker::Quotes::Shakespeare.hamlet_quote, user_id: 4)
end

5.times do 
    KpopGroup.create(group_name: Faker::Kpop.iii_groups, member: Faker::Name.name, gender: Faker::Demographic.sex, height: Faker::Demographic.height(unit: :imperial), fav_quote:Faker::Quotes::Shakespeare.hamlet_quote, user_id: 5)
end

