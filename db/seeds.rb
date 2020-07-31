# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customers = Customer.create(
  [
    { first_name: 'Johny', last_name: 'Flow' },
    { first_name: 'Raj', last_name: 'Jamnis' },
    { first_name: 'Andrew ', last_name: 'Chung' },
    { first_name: 'Mike', last_name: 'Smith' }
  ]
)

# Successful transaction
Charge.create(
  [
    { created: DateTime.now, paid: true, amount: 1223, currency: "usd", refunded: false, customer: customers[0], disputed: false },
    { created: DateTime.now, paid: true, amount: 36525, currency: "usd", refunded: false, customer: customers[0], disputed: false },
    { created: DateTime.now, paid: true, amount: 57256, currency: "usd", refunded: false, customer: customers[0], disputed: false },
    { created: DateTime.now, paid: true, amount: 23956, currency: "usd", refunded: false, customer: customers[0], disputed: false },
    { created: DateTime.now, paid: true, amount: 25557, currency: "usd", refunded: false, customer: customers[0], disputed: false },

    { created: DateTime.now, paid: true, amount: 4321, currency: "usd", refunded: false, customer: customers[1], disputed: false },
    { created: DateTime.now, paid: true, amount: 6552, currency: "usd", refunded: false, customer: customers[1], disputed: false },
    { created: DateTime.now, paid: true, amount: 5745, currency: "usd", refunded: false, customer: customers[1], disputed: false },

    { created: DateTime.now, paid: true, amount: 1255, currency: "usd", refunded: false, customer: customers[2], disputed: false },

    { created: DateTime.now, paid: true, amount: 1572, currency: "usd", refunded: false, customer: customers[3], disputed: false }
  ]
)

# Failed transaction
Charge.create(
  [
    { created: DateTime.now, paid: false, amount: 1223, currency: "usd", refunded: true, customer: customers[2], disputed: false },
    { created: DateTime.now, paid: false, amount: 36525, currency: "usd", refunded: true, customer: customers[2], disputed: false },
    { created: DateTime.now, paid: false, amount: 57256, currency: "usd", refunded: true, customer: customers[2], disputed: false },
    { created: DateTime.now, paid: false, amount: 23956, currency: "usd", refunded: true, customer: customers[3], disputed: false },
    { created: DateTime.now, paid: false, amount: 25557, currency: "usd", refunded: true, customer: customers[3], disputed: false }
  ]
)

# Disputed transaction
Charge.create(
  [
    { created: DateTime.now, paid: false, amount: 1223, currency: "usd", refunded: true, customer: customers[0], disputed: true },
    { created: DateTime.now, paid: false, amount: 2335, currency: "usd", refunded: true, customer: customers[0], disputed: true },
    { created: DateTime.now, paid: false, amount: 57476, currency: "usd", refunded: true, customer: customers[0], disputed: true },
    { created: DateTime.now, paid: false, amount: 23716, currency: "usd", refunded: true, customer: customers[1], disputed: true },
    { created: DateTime.now, paid: false, amount: 25097, currency: "usd", refunded: true, customer: customers[1], disputed: true }
  ]
)