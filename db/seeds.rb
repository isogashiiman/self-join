# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

companies = Company.create([
						 { name: "Disney" },
						 { name: "Marvel" },
						 { name: "Lucasfilm" },
						 { name: "Pixar" },
						 { name: "Microsoft" },
						 { name: "Linkedin" },
						 { name: "Github" },
						 { name: "Alphabet" },
						 { name: "Google" },
						 { name: "Youtube" },
						 { name: "Android" },
						 { name: "Nest" },
						])

properties = Property.create([
	{
		owner_id:Company.where(name:"Disney").first.id,
		owned_id:Company.where(name:"Marvel").first.id
	},
	{
		owner_id:Company.where(name:"Disney").first.id,
		owned_id:Company.where(name:"Lucasfilm").first.id
	},
	{
		owner_id:Company.where(name:"Disney").first.id,
		owned_id:Company.where(name:"Pixar").first.id
	},
	{
		owner_id:Company.where(name:"Microsoft").first.id,
		owned_id:Company.where(name:"Linkedin").first.id
	},
	{
		owner_id:Company.where(name:"Microsoft").first.id,
		owned_id:Company.where(name:"Github").first.id
	},
	{
		owner_id:Company.where(name:"Alphabet").first.id,
		owned_id:Company.where(name:"Google").first.id
	},
	{
		owner_id:Company.where(name:"Google").first.id,
		owned_id:Company.where(name:"Youtube").first.id
	},
	{
		owner_id:Company.where(name:"Google").first.id,
		owned_id:Company.where(name:"Android").first.id
	},
	{
		owner_id:Company.where(name:"Alphabet").first.id,
		owned_id:Company.where(name:"Nest").first.id
	},
	
])
#these lines are so WET ;)
