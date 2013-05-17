User.delete_all
Restaurant.delete_all
Review.delete_all
Comment.delete_all
Visit.delete_all
Tag.delete_all

u1 = User.create(name: 'Nicky', email: 'nickyhughes00@gmail.com', password: 'a', password_confirmation: 'a', is_admin: true, address: '568 Broadway Manhattan', lat: 40.724364, long: -73.997458)
u2 = User.create(name: 'Danni', email: 'danni@gmail.com', password: 'a', password_confirmation: 'a', address: '568 Broadway Manhattan', lat: 40.724364, long: -73.997458)
u3 = User.create(name: 'Lizzy', email: 'lizzy@gmail.com', password: 'a', password_confirmation: 'a', address: '568 Broadway Manhattan', lat: 40.724364, long: -73.997458)

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

v1 = Review.create(content: 'Maecenas fringilla lorem id libero cursus a commodo enim tempus. Vestibulum nec mi risus, at bibendum mauris. Praesent lacinia ligula in diam consectetur facilisis porta orci tincidunt. Nam scelerisque massa in sem blandit consequat hendrerit ante posuere. Vivamus pulvinar, erat ut auctor tristique, enim erat pharetra urna, ac convallis mauris ipsum vitae mauris. Vestibulum venenatis mollis turpis, eget tincidunt ante lacinia sit amet. Donec sed iaculis erat.')
v2 = Review.create(content: 'Phasellus tristique porttitor turpis pharetra posuere. Aenean est est, consequat a varius ac, malesuada in erat. Suspendisse tristique, mauris at viverra molestie, sem nisl convallis massa, et accumsan massa lorem non tellus. Donec sed nunc nec justo porttitor elementum. Vivamus non magna in odio adipiscing dapibus. Phasellus suscipit metus in dui dapibus non ultricies enim hendrerit. Duis fermentum dignissim mauris at dapibus. Vestibulum malesuada leo quis augue porta venenatis. Curabitur adipiscing orci sed libero rutrum sed semper leo rhoncus. Aliquam eleifend enim quis arcu pretium placerat. Nunc vel tortor nec erat semper aliquet et quis tortor.')
v3 = Review.create(content: 'Maecenas fringilla lorem id libero cursus a commodo enim tempus. Vestibulum nec mi risus, at bibendum mauris. Praesent lacinia ligula in diam consectetur facilisis porta orci tincidunt. Nam scelerisque massa in sem blandit consequat hendrerit ante posuere. Vivamus pulvinar, erat ut auctor tristique, enim erat pharetra urna, ac convallis mauris ipsum vitae mauris. Vestibulum venenatis mollis turpis, eget tincidunt ante lacinia sit amet. Donec sed iaculis erat.')
v4 = Review.create(content: 'Phasellus tristique porttitor turpis pharetra posuere. Aenean est est, consequat a varius ac, malesuada in erat. Suspendisse tristique, mauris at viverra molestie, sem nisl convallis massa, et accumsan massa lorem non tellus. Donec sed nunc nec justo porttitor elementum. Vivamus non magna in odio adipiscing dapibus. Phasellus suscipit metus in dui dapibus non ultricies enim hendrerit. Duis fermentum dignissim mauris at dapibus. Vestibulum malesuada leo quis augue porta venenatis. Curabitur adipiscing orci sed libero rutrum sed semper leo rhoncus. Aliquam eleifend enim quis arcu pretium placerat. Nunc vel tortor nec erat semper aliquet et quis tortor.')
v5 = Review.create(content: 'Maecenas fringilla lorem id libero cursus a commodo enim tempus. Vestibulum nec mi risus, at bibendum mauris. Praesent lacinia ligula in diam consectetur facilisis porta orci tincidunt. Nam scelerisque massa in sem blandit consequat hendrerit ante posuere. Vivamus pulvinar, erat ut auctor tristique, enim erat pharetra urna, ac convallis mauris ipsum vitae mauris. Vestibulum venenatis mollis turpis, eget tincidunt ante lacinia sit amet. Donec sed iaculis erat.')
v6 = Review.create(content: 'Phasellus tristique porttitor turpis pharetra posuere. Aenean est est, consequat a varius ac, malesuada in erat. Suspendisse tristique, mauris at viverra molestie, sem nisl convallis massa, et accumsan massa lorem non tellus. Donec sed nunc nec justo porttitor elementum. Vivamus non magna in odio adipiscing dapibus. Phasellus suscipit metus in dui dapibus non ultricies enim hendrerit. Duis fermentum dignissim mauris at dapibus. Vestibulum malesuada leo quis augue porta venenatis. Curabitur adipiscing orci sed libero rutrum sed semper leo rhoncus. Aliquam eleifend enim quis arcu pretium placerat. Nunc vel tortor nec erat semper aliquet et quis tortor.')
v7 = Review.create(content: 'Maecenas fringilla lorem id libero cursus a commodo enim tempus. Vestibulum nec mi risus, at bibendum mauris. Praesent lacinia ligula in diam consectetur facilisis porta orci tincidunt. Nam scelerisque massa in sem blandit consequat hendrerit ante posuere. Vivamus pulvinar, erat ut auctor tristique, enim erat pharetra urna, ac convallis mauris ipsum vitae mauris. Vestibulum venenatis mollis turpis, eget tincidunt ante lacinia sit amet. Donec sed iaculis erat.')
v8 = Review.create(content: 'Phasellus tristique porttitor turpis pharetra posuere. Aenean est est, consequat a varius ac, malesuada in erat. Suspendisse tristique, mauris at viverra molestie, sem nisl convallis massa, et accumsan massa lorem non tellus. Donec sed nunc nec justo porttitor elementum. Vivamus non magna in odio adipiscing dapibus. Phasellus suscipit metus in dui dapibus non ultricies enim hendrerit. Duis fermentum dignissim mauris at dapibus. Vestibulum malesuada leo quis augue porta venenatis. Curabitur adipiscing orci sed libero rutrum sed semper leo rhoncus. Aliquam eleifend enim quis arcu pretium placerat. Nunc vel tortor nec erat semper aliquet et quis tortor.')

c1 = Comment.create(content: 'this is a comment that is of medium length')
c2 = Comment.create(content: 'this is a comment that is of average length')
c3 = Comment.create(content: 'this is a comment that is of a very very very very long long length')
c4 = Comment.create(content: 'this is a short comment')
c5 = Comment.create(content: 'more comments for this restaurant')
c6 = Comment.create(content: 'so many comments here')

v1.comments = [c1, c2, c3]
v1.save
v2.comments = [c4, c5, c6]
v2.save
v3.comments = [c2, c3, c4]
v3.save
v4.comments = [c5, c1, c2]
v4.save


r1.reviews = [v1, v2]
r1.save
r2.reviews = [v3, v4]
r2.save
r3.reviews = [v5]
r3.save
r4.reviews = [v6]
r4.save
r5.reviews = [v7]
r5.save
r6.reviews = [v8]
r6.save

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

