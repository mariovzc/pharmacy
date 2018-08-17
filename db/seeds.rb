# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p 'Seed Init'

p 'Roles seed'

Role.first_or_create(
  [
    {
      name: 'Admin'
    },
    {
      name: 'Manager'
    },
    {
      name: 'Seller'
    }
  ]
)

p 'End  Roles seed'

p 'Create super admin'
User.create({
  email: "admin@sysadmin.com",
  password: "admin123456",
  password_confirmation: 'admin123456',
  first_name: 'Admin',
  last_name: 'Super',
  document: '12345678',
  role_id: 1
})

p 'End of create manager'

p 'Create manager'

User.create({
  email: "manager@manager.com",
  password: "12345678",
  password_confirmation: '12345678',
  first_name: 'Admin',
  last_name: 'Super',
  document: '12345610',
  role_id: 2
})

p 'End Create seller'

p 'Create seller'

User.create({
  email: "seller@seller.com",
  password: "12345678",
  password_confirmation: '12345678',
  first_name: 'Admin',
  last_name: 'Super',
  document: '12345679',
  role_id: 3
})
p 'End create Seller'

p 'Seed Finished'
