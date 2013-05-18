User.delete_all
Restaurant.delete_all
Review.delete_all
Comment.delete_all
Visit.delete_all
Tag.delete_all

u1 = User.create(name: 'Admin', email: 'admin@gmail.com', password: 'a', password_confirmation: 'a', is_admin: true, address: '568 Broadway Manhattan', lat: 40.724364, long: -73.997458)
u2 = User.create(name: 'Danni', email: 'danni@gmail.com', password: 'a', password_confirmation: 'a', address: '568 Broadway Manhattan', lat: 40.724364, long: -73.997458)
u3 = User.create(name: 'Lizzy', email: 'lizzy@gmail.com', password: 'a', password_confirmation: 'a', address: '568 Broadway Manhattan', lat: 40.724364, long: -73.997458)

r1 = Restaurant.create(name: 'The Mercer Kitchen', address: '99 Prince Street, New York', lat: 40.724750, long: -73.998719, value_rating: 5)
r2 = Restaurant.create(name: 'Macbar', address: '54 Prince Street, New York', lat: 40.723505, long: -73.996175, value_rating: 7)
r3 = Restaurant.create(name: 'Prince Street Cafe', address: '26 Prince Street, New York', lat: 40.722837, long: -73.994686, value_rating: 9)
r4 = Restaurant.create(name: "Jo's", address: '264 Elizabeth Street, New York', lat: 40.724055, long: -73.993470, value_rating: 6)
r5 = Restaurant.create(name: 'Fiat Cafe', address: '203 Mott Street, New York', lat: 40.721444, long: -73.995617, value_rating: 5)
r6 = Restaurant.create(name: 'Back Forty West', address: '70 Prince Street, New York', lat: 40.723697, long: -73.996986, value_rating: 8)

t1 = Tag.create(name: 'vegetarian', tag_symbol: 'V')
t2 = Tag.create(name: 'fast', tag_symbol: 'F')
t3 = Tag.create(name: 'cheap', tag_symbol: '$')
t4 = Tag.create(name: 'expensive', tag_symbol: '$$')
t5 = Tag.create(name: 'groups', tag_symbol: 'G')
t6 = Tag.create(name: 'healthy', tag_symbol: 'H')

v1 = Review.create(content: 'This is a fantastic place, I would definitely come back here again. The service is great. Maecenas fringilla lorem id libero cursus a commodo enim tempus. Vestibulum nec mi risus, at bibendum mauris. Praeset coque, eae mauris. Vestibulum venenatis mollis turpis, eget tincidunt ante lacinia sit amet. Donec sed iaculis erat.')
v2 = Review.create(content: 'I had the worst meal of my life here. It was absolutely terrible. Donec sed nunc nec justo porttitor elementum. Vivamus non magna in odio adipiscing dapibus. Phasellus suscipit metus in dui dapibus non ultricies enim hendrerit. Duis fermentum dignissim mauris at dapibus. Vestibulum malesuada leo quis augue porta venenatis. Curabitur adipiscing orci sed libero rutrum sed semper leo rhoncus. Aliquam eleifend enim quis arcu pretium placerat. Nunc vel tortor nec erat semper aliquet et quis tortor.')
v3 = Review.create(content: 'Where do I begin? The service here is ok. It is a little slow. But overall the food was quite average. Praesent lacinia ligula in diam consectetur facilisis porta orci tincidunt. Nam scelerisque massa in sem blandit consequat hendrerit ante posuere. Vivamus pulvinar, erat ut auctor tristique, enim erat pharetra urna, ac convallis mauris ipsum vitae mauris. Vestibulum venenatis mollis turpis, eget tincidunt ante lacinia sit amet. Donec sed iaculis erat.')
v4 = Review.create(content: 'I really like this place. I have been here about six times now and each time it just gets better and better. Donec sed nunc nec justo porttitor elementum. Vivamus non magna in odio adipiscing dapibus. Phasellus suscipit metus in dui dapibus non ultricies enim hendrerit. Duis fermentum dignissim mauris at dapibus. Vestibulum malesuada leo quis augue porta venenatis. Curabitur adipiscing orci sed libero rutrum sed semper leo rhoncus. Aliquam eleifend enim quis arcu pretium placerat. Nunc vel tortor nec erat semper aliquet et quis tortor.')
v5 = Review.create(content: 'Great food. Wonderful atmosphere. We love it here. We will definitely be back! Maecenas fringilla lorem id libero cursus a commodo enim tempus. Vestibulum nec mi risus, at bibendum mauris. Praesent lacinia ligula in diam consectetur facilisis porta orci tincidunt. Nam scelerisque massa in sem blandit consequat hendrerit ante posuere. Vivamus pulvinar, erat ut auctor tristique, enim erat pharetra urna, ac convallis mauris ipsum vitae mauris. Vestibulum venenatis mollis turpis, eget tincidunt ante lacinia sit amet. Donec sed iaculis erat.')
v6 = Review.create(content: 'Phasellus tristique porttitor turpis pharetra posuere. Aenean est est, consequat a varius ac, malesuada in erat. Suspendisse tristique, mauris at viverra molestie, sem nisl convallis massa, et accumsan massa lorem non tellus. Donec sed nunc nec justo porttitor elementum. Vivamus non magna in odio adipiscing dapibus. Phasellus suscipit metus in dui dapibus non ultricies enim hendrerit. Duis fermentum dignissim mauris at dapibus. Vestibulum malesuada leo quis augue porta venenatis. Curabitur adipiscing orci sed libero rutrum sed semper leo rhoncus. Aliquam eleifend enim quis arcu pretium placerat. Nunc vel tortor nec erat semper aliquet et quis tortor.')
v7 = Review.create(content: 'Maecenas fringilla lorem id libero cursus a commodo enim tempus. Vestibulum nec mi risus, at bibendum mauris. Praesent lacinia ligula in diam consectetur facilisis porta orci tincidunt. Nam scelerisque massa in sem blandit consequat hendrerit ante posuere. Vivamus pulvinar, erat ut auctor tristique, enim erat pharetra urna, ac convallis mauris ipsum vitae mauris. Vestibulum venenatis mollis turpis, eget tincidunt ante lacinia sit amet. Donec sed iaculis erat.')
v8 = Review.create(content: 'Phasellus tristique porttitor turpis pharetra posuere. Aenean est est, consequat a varius ac, malesuada in erat. Suspendisse tristique, mauris at viverra molestie, sem nisl convallis massa, et accumsan massa lorem non tellus. Donec sed nunc nec justo porttitor elementum. Vivamus non magna in odio adipiscing dapibus. Phasellus suscipit metus in dui dapibus non ultricies enim hendrerit. Duis fermentum dignissim mauris at dapibus. Vestibulum malesuada leo quis augue porta venenatis. Curabitur adipiscing orci sed libero rutrum sed semper leo rhoncus. Aliquam eleifend enim quis arcu pretium placerat. Nunc vel tortor nec erat semper aliquet et quis tortor.')

c1 = Comment.create(content: 'I cannot bring myself to agree with this review at all.')
c2 = Comment.create(content: 'I completely agree, and the service is very good too.')
c3 = Comment.create(content: 'I wonder who wrote that review, it seems very biassed.')
c4 = Comment.create(content: 'None of you know what you are talking about. The food here is fantastic.')
c5 = Comment.create(content: 'Agreed.')
c6 = Comment.create(content: 'Can someone have this review removed please? It is not very helpful.')
c7 = Comment.create(content: 'I disagree with the review here, it is quite the opposite of everything being said.')
c8 = Comment.create(content: 'I suppose that is a fair summary. A bit harsh though.')
c9 = Comment.create(content: 'The restaurant was not good value at all, why would you say that?')
c10 = Comment.create(content: 'There are too many other options to go there again.')
c11 = Comment.create(content: 'Was that your first time at that restaurant? I am interested to know.')
c12 = Comment.create(content: 'Thanks for the review, very helpful.')

v1.comments = [c1]
v1.save
v2.comments = [c2]
v2.save
v3.comments = [c3, c4]
v3.save
v4.comments = [c5, c6]
v4.save
v5.comments = [c7]
v5.save
v6.comments = [c8]
v6.save
v7.comments = [c9, c10]
v7.save
v8.comments = [c11, c12]
v8.save


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

