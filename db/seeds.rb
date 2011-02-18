User.create(:email => "maloney.mc@gmail.com", :password => "giraffe", :password_confirmation => "giraffe", :email_confirmed => true)

Venue.create(:name => "My House", :address_1 => "141 Spencer St", :address_2 => "# 305", :address_city => "Brooklyn", :address_state => "NY", :address_zipcode => "11205")
Venue.create(:name => "Big Fuel", :address_1 => "298 5th Ave", :address_2 => "Floor 5", :address_city => "New York", :address_state => "NY", :address_zipcode => "10001")
Venue.create(:name => "12 Avondale", :address_1 => "12 Avondale Rd", :address_2 => nil, :address_city => "Yonkers", :address_state => "NY", :address_zipcode => "10710")
Venue.create(:name => "Mom's", :address_1 => "182 Stepping Stone Ln", :address_2 => nil, :address_city => "Orchard Park", :address_state => "NY", :address_zipcode => "14127")
Venue.create(:name => "Dad's", :address_1 => "270 Depew Ave", :address_2 => nil, :address_city => "Buffalo", :address_state => "NY", :address_zipcode => "14026")

venue = Venue.first

venue.tips.create(:body => "Try the steak!")