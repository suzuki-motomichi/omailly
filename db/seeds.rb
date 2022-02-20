# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.create(
  [
    { user_id: 1, title: "O'MAILLY", last_day: 2, status: 1, content: 'クソアプリです'},
    { user_id: 1, title: "Internet\n" + 'Explorer', last_day: 2022, status: 0, content: 'さようなら' },
    { user_id: 1, title: 'ガングロギャル男', last_day: 0, status: 0, content: '高校生の時やってたわ' },
    { user_id: 1, title: "ひぐらしの\n" + 'なく頃に 卒', last_day: 2021, status: 0, content: '業は面白かったです' }
  ]
)
