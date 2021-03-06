# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Van.destroy_all
Image.destroy_all
VanImage.destroy_all

v1 = Van.create(name: 'The Rambler', description: 'RAM Promaster 159 WB High Roof', 
                price: 96000, mileage: 8625,
                size: '2 person', 
                interior_features: 'Full Size Murphy bed with mattress. Two storage benches with cushions &
                Post Table. Overhead storage cabinets',
                utilities: 'Dawn Sink with faucet, Induction cooktop, Microwave, EVO 40 with smart temperature control, Floor to ceiling shower with Natures Head Compost Toilet',
                available: true)

v2 = Van.create(name:'The Overlander', description: 'Overland 2020 Mercedes Sprinter 4x4 144',
                price: 160000, mileage: 1000,
                size: '2 person',
                interior_features: 'Removable 3-Panel bed system, bedside cubby, bamboo panels, slide pantry.',
                utilities: 'Stainless Steel Sink, Cuisinart Induction Cooktop, Electrical cabinet, Toilet and shower, usb chargers on both sides of bed, LED ceiling lights (5) on dimmer, 4000k warm white',
                available: true)

i1 = Image.create(img_url: 'https://images.squarespace-cdn.com/content/v1/5ae313877106997b679cbd30/1608606406987-FNSOAX7ZVJRGIPM147JG/ke17ZwdGBToddI8pDm48kDUenuO8rMQmebykEEIq_zEUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8PaoYXhp6HxIwZIk7-Mi3Tsic-L2IOPH3Dwrhl-Ne3Z2FKVZ3JTyubAzn07z6Ml5uUjev0Tycse35GGx2QNth_6hHAH51QaxKq4KdVMVBxpG/C6ED47D0-1611-4341-9D89-DB8F788B7774_1_105_c.jpeg?format=750w')
i2 = Image.create(img_url: 'https://images.squarespace-cdn.com/content/v1/5ae313877106997b679cbd30/1608606414589-7O3PSLSWAXW12GM22VLF/ke17ZwdGBToddI8pDm48kK60W-ob1oA2Fm-j4E_9NQB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0kD6Ec8Uq9YczfrzwR7e2Mh5VMMOxnTbph8FXiclivDQnof69TlCeE0rAhj6HUpXkw/Interior+murphy+bed+up.jpeg?format=750w')
i3 = Image.create(img_url: 'https://images.squarespace-cdn.com/content/v1/5ae313877106997b679cbd30/1608606423008-JZVKEX1SGV433QWM218P/ke17ZwdGBToddI8pDm48kK60W-ob1oA2Fm-j4E_9NQB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0kD6Ec8Uq9YczfrzwR7e2Mh5VMMOxnTbph8FXiclivDQnof69TlCeE0rAhj6HUpXkw/sliding+door.jpeg?format=750w')
i4 = Image.create(img_url: 'https://vanlifetrader.com/wp-content/uploads/listing-uploads/gallery/2020/11/IMG-1915-scaled.jpg')
i5 = Image.create(img_url: 'https://vanlifetrader.com/wp-content/uploads/listing-uploads/gallery/2020/11/IMG-1910-scaled.jpg')
i6 = Image.create(img_url: 'https://vanlifetrader.com/wp-content/uploads/listing-uploads/gallery/2020/11/IMG-1912-scaled.jpg')


vi1 = VanImage.create(image_id: i1.id, van_id: v1.id)
vi2 = VanImage.create(image_id: i2.id, van_id: v1.id)
vi3 = VanImage.create(image_id: i3.id, van_id: v1.id)
vi4 = VanImage.create(image_id: i4.id, van_id: v2.id)
vi5 = VanImage.create(image_id: i5.id, van_id: v2.id)
vi6 = VanImage.create(image_id: i6.id, van_id: v2.id)