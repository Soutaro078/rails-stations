# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Movie.create!([
  {
    name: "となりのトトロ",
    year: "1988",
    description: "小さな村で不思議な生き物トトロと出会う姉妹の物語。",
    image_url: "https://picsum.photos/300/200?random=1",
    is_showing: true
  },
  {
    name: "千と千尋の神隠し",
    year: "2001",
    description: "不思議な世界で働くことになった少女千尋の冒険。",
    image_url: "https://picsum.photos/300/200?random=2",
    is_showing: true
  },
  {
    name: "もののけ姫",
    year: "1997",
    description: "自然と人間の共存をテーマにした壮大な物語。",
    image_url: "https://picsum.photos/300/200?random=3",
    is_showing: false
  }
])

Sheet.create([
  { column: 1, row: 'a' }, { column: 2, row: 'a' }, { column: 3, row: 'a' }, { column: 4, row: 'a' }, { column: 5, row: 'a' },
  { column: 1, row: 'b' }, { column: 2, row: 'b' }, { column: 3, row: 'b' }, { column: 4, row: 'b' }, { column: 5, row: 'b' },
  { column: 1, row: 'c' }, { column: 2, row: 'c' }, { column: 3, row: 'c' }, { column: 4, row: 'c' }, { column: 5, row: 'c' }
])