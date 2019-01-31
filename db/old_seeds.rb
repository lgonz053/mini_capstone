Product.create!([
  {name: "Goose Island Bourbon Stout", price: "15.0", description: "American Imperial Stout", in_stock: true, supplier_id: 1},
  {name: "Peroni", price: "7.0", description: "Italian Lager", in_stock: true, supplier_id: 3},
  {name: "Blue Moon", price: "7.0", description: "Bellyslide Belgian White", in_stock: true, supplier_id: 2},
  {name: "Corona Extra", price: "8.0", description: "Pale Lager From Mexico", in_stock: true, supplier_id: 1},
  {name: "Guinness", price: "8.0", description: "Irish Dry Stout", in_stock: true, supplier_id: 3},
  {name: "Lagunitas Sumpin Sumpin", price: "9.0", description: "Czech-style Pilsner", in_stock: true, supplier_id: 2},
  {name: "Modelo", price: "6.0", description: "Pale Lager From Mexico", in_stock: true, supplier_id: 2}
])
Supplier.create!([
  {name: "Carol's Liquor Store", email: "Carols@gmail.com", phone_number: "444-6567-9900"},
  {name: "Don's Spirit's Store", email: "the_don@gmail.com", phone_number: "444-656-6969"},
  {name: "Local Shack", email: "sack_shack@hotmail.com", phone_number: "312-123-99909"}
])
