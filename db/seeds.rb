# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "ffaker"

Product.create(
  name: "Tag Filter",
  price: 50,
  image_url: "https://ppolyzos.com/wp-content/uploads/2020/03/chrome-dev-tools-filters-include-exclude-1024x600.jpg",
  description: "The Product Filter – Tags widget that is part of the WooCommerce Product Search extension provides a live product tag filter for your shop. While your customers choose the desired tag, it finds matching products and shows them on the shop page.",
  availability: true,
)

Product.create(
  name: "Air Output Bridge",
  price: 50,
  image_url: "https://www.researchgate.net/profile/Rossano-Lang/publication/232087962/figure/fig2/AS:601719947923461@1520472623318/a-Overview-image-of-the-air-bridge-PC-fully-fabricated-with-FIB-b-central-region-of_Q320.jpg",
  description: "Ideal for small and medium-sized networks, this Air Output Bridge brings a full slate of Cisco high-performance functionality to the enterprise environment.",
  availability: true,
)
Product.create(
  name: "Performance Case",
  price: 50,
  image_url: "https://m.media-amazon.com/images/I/91zUa+-t1RL._AC_SS450_.jpg",
  description: "Studio, cafe, stage, floor, coffee table—the 7U Performance case doesn't care where you play with it. Two 3U rows house and power all the modules you love (or one day hope to love), while the additional 1U row accommodates an extensive selection of specialized utility modules.",
  availability: true,
)
Product.create(
  name: FFaker::Product.product_name,
  price: 50,
  image_url: "TBD",
  description: "TBD",
  availability: true,
)
Product.create(
  name: FFaker::Product.product_name,
  price: 50,
  image_url: "TBD",
  description: "TBD",
  availability: true,
)
Product.create(
  name: FFaker::Product.product_name,
  price: 50,
  image_url: "TBD",
  description: "TBD",
  availability: true,
)
Product.create(
  name: FFaker::Product.product_name,
  price: 50,
  image_url: "TBD",
  description: "TBD",
  availability: true,
)
Product.create(
  name: FFaker::Product.product_name,
  price: 50,
  image_url: "TBD",
  description: "TBD",
  availability: true,
)
Product.create(
  name: FFaker::Product.product_name,
  price: 50,
  image_url: "TBD",
  description: "TBD",
  availability: true,
)
Product.create(
  name: FFaker::Product.product_name,
  price: 50,
  image_url: "TBD",
  description: "TBD",
  availability: true,
)
Product.create(
  name: FFaker::Product.product_name,
  price: 50,
  image_url: "TBD",
  description: "TBD",
  availability: true,
)
