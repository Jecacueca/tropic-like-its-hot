# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

island = Island.create!(
  user: User.first,
  name: "Island of Skye",
  price: 104,
  address: 'UK',
  description: "Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Similique, corrupti. Debitis quidem, esse officia sed dignissimos cumque alias nobis rem aspernatur veritatis enim perspiciatis adipisci repellat veniam amet facilis quasi."
)

island = Island.create!(
  user: User.first,
  name: "Martinique",
  price: 104,
  address: 'Caribbean',
  description: "Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Similique, corrupti. Debitis quidem, esse officia sed dignissimos cumque alias nobis rem aspernatur veritatis enim perspiciatis adipisci repellat veniam amet facilis quasi."
)

island = Island.create!(
  user: User.first,
  name: "Corsica",
  price: 104,
  address: 'France',
  description: "Lorem ipsum, dolor sit amet, consectetur adipisicing elit. Similique, corrupti. Debitis quidem, esse officia sed dignissimos cumque alias nobis rem aspernatur veritatis enim perspiciatis adipisci repellat veniam amet facilis quasi."
)
