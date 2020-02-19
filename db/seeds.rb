# db/seeds.rb
cars = [
  {brand: 'Audi', color: 'blue'},
  {brand: 'Ford', color: 'red'},
]

cars.each do |u|
  Car.create(u)
end
