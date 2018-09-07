require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


canes = Restaurant.new('Raising Canes')
el_tiempo = Restaurant.new('El Tiempo')
eight_row = Restaurant.new('Eight Row Flint')

andrew = Customer.new('Andrew', 'Sprague')
elon = Customer.new('Elon','Musk')
james = Customer.new('James','Harden')




andrew_rating_eight_row = andrew.add_review(eight_row, 5, 'This place is awesome!')
andrew_rating_canes = andrew.add_review(canes, 5, 'BEST CHICKEN TENDERS EVER!!!!')
andrew_rating_canes_2 = andrew.add_review(canes, 5, 'I went a second time....and it was just as awesome!!!!')


elon_rating_eight_row = elon.add_review(eight_row, 3, 'Good. Really like the tacos.')
elon_rating_canes = elon.add_review(canes, 1, 'Who thinks a restaurant can have 1 item that they sell and be successful? Look at how many products Ive come up with! So many. And they all work wonderfully. And there is no fraud. I swear, **fingers-crossed emoji.')
elon_rating_el_tiempo = elon.add_review(el_tiempo, 5, 'Atmosphere is great. Cant go wrong with the fajitas.')



james_rating_eight_row = james.add_review(eight_row, 1, 'Nah man.')



binding.pry
0 #leave this here to ensure binding.pry isn't the last line