User.delete_all
Restaurant.delete_all
Review.delete_all
Comment.delete_all
Visit.delete_all
Tag.delete_all


u1 = User.create(name: 'Nicky', email: 'nickyhughes00@gmail.com', password: 'a', password_confirmation: 'a', is_admin: true)
u2 = User.create(name: 'Danni', email: 'danni@gmail.com', password: 'a', password_confirmation: 'a')
u3 = User.create(name: 'Lizzy', email: 'lizzy@gmail.com', password: 'a', password_confirmation: 'a')

r1 = Restaurant.create(name: 'The Mercer Kitchen', address: '99 Prince Street, New York', lat: 40.724750, long: -73.998719, value_rating: 5)
r2 = Restaurant.create(name: 'Macbar', address: '54 Prince Street, New York', lat: 40.723505, long: -73.996175, value_rating: 7)
r3 = Restaurant.create(name: 'Prince Street Cafe', address: '26 Prince Street, New York', lat: 40.722837, long: -73.994686, value_rating: 9)
r4 = Restaurant.create(name: "Jo's", address: '264 Elizabeth Street, New York', lat: 40.724055, long: -73.993470, value_rating: 6)
r5 = Restaurant.create(name: 'Fiat Cafe', address: '203 Mott Street, New York', lat: 40.721444, long: -73.995617, value_rating: 5)
r6 = Restaurant.create(name: 'Back Forty West', address: '70 Prince Street, New York', lat: 40.723697, long: -73.996986, value_rating: 8)

t1 = Tag.create(name: 'healthy')
t2 = Tag.create(name: 'burgers')
t3 = Tag.create(name: 'fast')
t4 = Tag.create(name: 'slow lunch')
t5 = Tag.create(name: 'good for groups')
t6 = Tag.create(name: 'long lines')


r1.tags = [t1, t5]
r2.tags = [t2, t3]
r3.tags = [t3]
r4.tags = [t2, t6]
r5.tags = [t4, t6]
r6.tags = [t1, t5]

t1.restaurants = [r1, r6]
t2.restaurants = [r2]
t3.restaurants = [r2, r3]
t4.restaurants = [r5]
t5.restaurants = [r1, r6]
t6.restaurants = [r4, r5]

