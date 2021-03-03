# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Picture.create!(
    img_link: 'https://images.unsplash.com/photo-1517533564579-4e4cef1505c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    likes: 2,
    created_by: 'Osas',
    liked: 'true',
    caption: 'Picture by Sharon Garcia from Unsplash'
)
Picture.create!(
    img_link: 'https://images.unsplash.com/photo-1555029510-40401d84c73c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    likes: 0,
    created_by: 'Chisom',
    liked: 'false',
    caption: 'Picture by Olu Famule from Unsplash'
)