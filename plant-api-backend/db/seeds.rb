# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Plant.create(name: "peperomia raindrop", image:"https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/103551391_2351985045106059_5324664248823302513_o.jpg?_nc_cat=101&_nc_sid=9267fe&_nc_ohc=95hxyXfLmH4AX90nmbl&_nc_ht=scontent-dfw5-1.xx&oh=6bc2dc4e78985e862e638403021a9572&oe=5F29D574", description: "Peperomia are slow growing tropical annuals and perennials that are easy to care for under average room or conservatory conditions. Peperomia Polybotrya 'Raindrop' have a striking foliage with 'raindrop' shaped thick leaves.") 

p2 = Plant.create(name:"Monstera Delicious Aka the swiss cheese plant", image:"https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_monstera-deliciosa_variant_medium_grant_terracotta_1440x.jpg?v=1589821773", description:"Monstera deliciosa, commonly called split-leaf philodendron, is native to Central America. It is a climbing, evergreen perennial vine that is perhaps most noted for its large perforated leaves on thick plant stems and its long cord-like aerial roots.")

p3 = Plant.create(name: "Sansevieria trifasciata aka Snake plant", image: "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_large-snake-laurentii_variant_large_hyde_pale-grey_1440x.jpg?v=1585544674 ", description: "It is a stemless evergreen perennial that, with proper care, will last for many years. In its native habitat, plant foliage may rise to as much as 4' tall, but is often smaller (to 2' tall) on indoor plants. Erect, fleshy, sharply-pointed, sword-shaped leaves are deep green with light gray-green horizontal stripes")

p4 = Plant.create(name: "Strelitzia reginae aka Bird of paradise", image: "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bird-of-paradise_variant_large_grant_black_1440x.jpg?v=1585544695", description: "Strelitzia reginae, closely related to the bananas (Musaceae), is a species of evergreen tropical herbaceous plant that is native to South Africa. These regal plants are thus named for the beautiful, cranelike flowers that they produce. If given full, southern exposure, proper humidity, and temperature, they may flower indoors. ")

p5 = Plant.create(name: "Cactus", image: "https://scontent-dfw5-2.xx.fbcdn.net/v/t1.0-9/74420578_2182763052028260_3778557316140367872_o.jpg?_nc_cat=108&_nc_sid=730e14&_nc_ohc=IC762DbMvc4AX-ThgBX&_nc_ht=scontent-dfw5-2.xx&oh=d41744833da1690886b461f29fd48ed9&oe=5F29A04E", description: "The cactus belongs to the family Cactaceae, which encompasses almost 2,000 different species, according to the Aggie Horticulture website of Texas A&M University. The cactus is an iconic representation of desert plant life, known for its prickly needles and often towering height.")

p6 = Plant.create(name: "Fern", image: "https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/66673794_2088799451424621_725082898671075328_n.jpg?_nc_cat=111&_nc_sid=8bfeb9&_nc_ohc=0ngwT7kgCK0AX-AYQKr&_nc_ht=scontent-dfw5-1.xx&oh=f803b80f5e7c7683d3b0aa62f351f305&oe=5F2ADBBE", description: "Ferns are a very common plant used both inside as houseplants and as garden foliage. Dating back to prehistoric times, ferns exist in tens of thousands of species. They range in appearance from airy and light to dense and bushy, but their care and needs remain similar")



c1 = Care.create(maintenance: "Low care, water twice a week .Do not overwater", light: "partial exposure to sunlight ", fertilization: "fertilizes with food plant every 3 months", plant_id: 1)

c2 = Care.create(maintenance: "Between watering times allow the soil to become dry to the touch within the top couple of inches or so of soil.", light: "A fairly bright room or bright with plenty of shade is best. Direct sunlight will damage the leaves .", fertilization: "fertilizing once a month with a diluted solution.", plant_id: 2)

c3 = Care.create(maintenance: " Water every 3-4 weeks, allowing soil to dry out between waterings. Increase frequency with increased light.", light: "Thrives in medium to bright indirect light, but can tolerate low indirect light.", fertilization:  "feed once a month with a diluted indoor food solution", plant_id: 3)

c4 = Care.create(maintenance: "Water every 1-2 weeks, allowing soil to dry out between waterings. Increase frequency with increased light. Does best in higher humidity. ", light: "Thrives in bright direct to bright indirect light. Can take full sun.", fertilization: "Once every six months", plant_id: 4)

c5 = Care.create(maintenance: "Very Low maintenance , water once every two weeks", light: "bright and direct sunlight", fertilization: "feed cacti food every 3 months", plant_id: 5)

c6 = Care.create(maintenance: "Water lightly ,once a week", light: "Lots of shades ,partial lighting", fertilization: "Once every two weeks", plant_id: 6)




p1.cares << c1
p2.cares << c2
p3.cares << c3
p4.cares << c4
p5.cares << c5
p6.cares << c6




