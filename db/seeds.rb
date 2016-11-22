# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.delete_all


Company.create!(name: 'Dringo',
                number_of_employees: '1-10',
                product: 'Recruiting Tool',
                typical_sale_size: '$100',
                website: 'https://dringo.io',
                mission: 'Creative solutions to student hiring.',
                notes: 'DA BEST!!')

Company.create!(name: 'Google',
                number_of_employees: '500-1000',
                product: 'Search/Advertisement',
                typical_sale_size: '$100',
                website: 'https://google.com',
                mission: 'Indexing the internet.',
                notes: 'DA Second best!!')

Company.create!(name: 'LinkedIn',
                number_of_employees: '100-500',
                product: 'Recruiting Tool',
                typical_sale_size: '$100/month',
                website: 'https://linkedin.com',
                mission: 'Career social media.',
                notes: 'ehh!!')

Company.create!(name: 'Alphabet',
                number_of_employees: '500-1000',
                product: 'More googles',
                typical_sale_size: '?',
                website: 'https://abc.xyz/',
                mission: 'more googles',
                notes: 'DA BESTish!!')
