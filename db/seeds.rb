# Image.create!([
#   {URL: "https://brewpublic.com/wp-content/uploads/2016/11/A-pour-of-2016-Goose-Island-Bourbon-County-Brand-Stout..jpg", product_id: 1},
#   {URL: "http://ma-designishuman.com/content/3-articles/21-peroni-br-dee-official-beverage/primary.jpg", product_id: 2},
#   {URL: "https://www.brewsnews.com.au/wp-content/uploads/2017/10/Blue_Moon_hero.jpg", product_id: 3},
#   {URL: "http://coachellavalleyweekly.com/wp-content/uploads/2018/06/FP_BREWTALITY-1-696x435.jpg", product_id: 4},
#   {URL: "https://www.guinness.com/media/1695/guinnessdraught9.jpg", product_id: 5},
#   {URL: "http://www.putnamandvine.com/wp-content/uploads/2015/11/Lagunitas-Little-Sumpin.jpg", product_id: 6},
#   {URL: "https://www.superama.com.mx/Content/images/products/img_large/0750106419626L.jpg", product_id: 7},
#   {URL: "https://s3-prod.chicagobusiness.com/s3fs-public/BLOGS09-151129998-AR.jpeg", product_id: 1},
#   {URL: "https://tribwgnam.files.wordpress.com/2016/11/54d4555460c21_-_bourbon_county_stout_2014-3nf6cq-share.jpg?quality=85&strip=all", product_id: 1},
#   {URL: "https://odo.imgix.net/media/catalog/product/p/e/peroni-bucket-600x592.jpg?auto=compress%2Cformat&bg=fff&fit=fillmax&h=600&or=0&w=600", product_id: 2},
#   {URL: "https://pbs.twimg.com/media/DMm0SLvXUAAJ9iG.png", product_id: 2},
#   {URL: "https://media.nbcsandiego.com/images/1200*801/Blue+Moon+Beer.jpg?ak=bc", product_id: 3},
#   {URL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvDeTYzrjTYic6dUmRWafvGkSUbpQxVkjw8jm5Xl1xka4AMinu", product_id: 3},
#   {URL: "https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2012/08/27/48801806-corona-on-beach-courtesy.530x298.jpg?v=1359654629", product_id: 4},
#   {URL: "http://foods-recipes.com/wp-content/uploads/2015/08/corona-extra-beer-drink-corona.jpg", product_id: 4},
#   {URL: "https://www.irishcentral.com/uploads/article/126375/cropped_GUINNESS.jpg?t=1528116858", product_id: 5},
#   {URL: "https://img.theculturetrip.com/840x440/smart//wp-content/uploads/2016/12/2814503439_846e1d1697_o1.jpg", product_id: 5},
#   {URL: "https://www.quicksipdelivery.com/wp-content/uploads/2017/04/lagunitas-sumpin.jpg", product_id: 6},
#   {URL: "https://cdn1.wine-searcher.net/images/labels/22/89/lagunitas-brewing-co-a-little-sumpin-sumpin-ale-beer-california-usa-10492289.jpg", product_id: 6},
#   {URL: "https://masaryk.tv/wp-content/uploads/2015/09/modelo-cerveza-1050x701.jpg", product_id: 7},
#   {URL: "https://www.modelousa.com/sites/default/files/styles/raw/public/2016-08/product-especial_2.png?itok=yk4aPNXX", product_id: 7}
# ])
# Order.create!([
#   {user_id: 1, product_id: 1, quantity: 1, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: 3, quantity: 12, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: 5, quantity: 5, subtotal: nil, tax: nil, total: nil},
#   {user_id: 1, product_id: 4, quantity: 2, subtotal: "16.0", tax: "1.44", total: "17.44"},
#   {user_id: 1, product_id: 4, quantity: 2, subtotal: "16.0", tax: "1.44", total: "17.44"},
#   {user_id: 1, product_id: 6, quantity: 3, subtotal: "27.0", tax: "2.43", total: "29.43"},
#   {user_id: 1, product_id: 3, quantity: 1, subtotal: "7.0", tax: "0.63", total: "7.63"},
#   {user_id: 2, product_id: 2, quantity: 2, subtotal: "14.0", tax: "1.26", total: "15.26"},
#   {user_id: 1, product_id: 6, quantity: 2, subtotal: "18.0", tax: "1.62", total: "19.62"}
# ])
# Product.create!([
#   {name: "Goose Island Bourbon Stout", price: "15.0", description: "American Imperial Stout", in_stock: true, supplier_id: 1},
#   {name: "Peroni", price: "7.0", description: "Italian Lager", in_stock: true, supplier_id: 3},
#   {name: "Blue Moon", price: "7.0", description: "Bellyslide Belgian White", in_stock: true, supplier_id: 2},
#   {name: "Corona Extra", price: "8.0", description: "Pale Lager From Mexico", in_stock: true, supplier_id: 1},
#   {name: "Guinness", price: "8.0", description: "Irish Dry Stout", in_stock: true, supplier_id: 3},
#   {name: "Lagunitas Sumpin Sumpin", price: "9.0", description: "Czech-style Pilsner", in_stock: true, supplier_id: 2},
#   {name: "Modelo", price: "6.0", description: "Pale Lager From Mexico", in_stock: true, supplier_id: 2},
#   {name: "Victoria", price: "5.0", description: "Mexican Pale Lager", in_stock: true, supplier_id: 2}
# ])
# Supplier.create!([
#   {name: "Carol's Liquor Store", email: "Carols@gmail.com", phone_number: "444-6567-9900"},
#   {name: "Don's Spirit's Store", email: "the_don@gmail.com", phone_number: "444-656-6969"},
#   {name: "Local Shack", email: "sack_shack@hotmail.com", phone_number: "312-123-99909"}
# ])
# User.create!([
#   {name: "Home Simpson", email: "homer@gmail.com", password_digest: "$2a$10$b2rmQs4JWeU1XXYWh2q0u.TamvnaXW2m6B00OdmsGf0whoMKZq8Ky", admin: false},
#   {name: "Leo Gonzalez", email: "leo@gmail.com", password_digest: "$2a$10$zArRDRVlnzqPr3RkyhkVjeyTdOJ9QT.hS28YahesObNDhKlsKgXj.", admin: true}
# ])

Category.create!(name: 'Domestic')
Category.create!(name: 'Imported')
Category.create!(name: 'Expensive')

ProductCatergories.create!(product_id: 1, category_id: 1)
ProductCatergories.create!(product_id: 1, category_id: 3)
ProductCatergories.create!(product_id: 2, category_id: 2)
ProductCatergories.create!(product_id: 3, category_id: 2)
ProductCatergories.create!(product_id: 4, category_id: 2)
ProductCatergories.create!(product_id: 5, category_id: 2)
ProductCatergories.create!(product_id: 6, category_id: 1)
ProductCatergories.create!(product_id: 6, category_id: 3)
ProductCatergories.create!(product_id: 7, category_id: 2)
ProductCatergories.create!(product_id: 8, category_id: 2)

