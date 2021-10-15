# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserMedicine.destroy_all
User.destroy_all
Medicine.destroy_all



puts "Seed starting"

puts "seeds for User"

u1 = User.create(name: "Bryan", username: "El_Bryan17", password: "123")
u2 = User.create(name: "Alicia", username: "La_Alicia", password: "456")


puts "seeds for Medicine"

m1 = Medicine.create(name: "Claritin", image: "https://images.biglots.com/24+Hour+Non-Drowsy+Allergy+Relief+10+Mg+Tablets%2C10-Count?set=imageURL%5B%2Fimages%2Fproduct%2F134%2F810342986.jpg%5D,env%5Bprod%5D,nocache%5Btrue%5D,ver%5B1%5D,profile%5Bpdp_main_med%5D&call=url%5Bfile:biglots/product.chain%5D",price: 35)
m2 = Medicine.create(name: "Advil", image: "https://i-cf65ch.gskstatic.com/content/dam/cf-consumer-healthcare/bp-advil/en_US/products/advil-tablets-new.png?auto=format",price: 12)
m3 = Medicine.create(name: "Robitussin", image: "https://m.media-amazon.com/images/I/81xvjmXsS+L._AC_SX679_.jpg",price: 24)
m4 = Medicine.create(name: "Benadryl", image: "https://m.media-amazon.com/images/I/816a5Na1tEL._AC_SL1500_.jpg",price: 27)
m5 = Medicine.create(name: "Zantac", image: "https://images.albertsons-media.com/is/image/ABS/159010191?$ecom-pdp-desktop$&defaultImage=Not_Available&defaultImage=Not_Available",price: 17)
m6 = Medicine.create(name: "Tylenol Extra Strength", image: "https://www.tylenol.com/sites/tylenol_us/files/styles/product_image/public/tyl_est_charm_bty_ft.jpg",price: 15)
m7 = Medicine.create(name: "TUMS Extra Strength", image: "https://m.media-amazon.com/images/I/71K0fD06CAL._AC_SL1500_.jpg",price: 14)
m8 = Medicine.create(name: "Pepto Bismol", image: "https://m.media-amazon.com/images/I/817ssZaA1VL._AC_SL1500_.jpg", price: 16 )
m9 = Medicine.create(name: "Advil Liqui-Gels", image: "https://i5.walmartimages.com/asr/c36ef0ff-fa6a-415e-b1ab-825f1d68176f.596d2b8d75b5ab17c79115ed1a6d82d1.jpeg",price: 20)
m10 = Medicine.create(name: "Zarbees", image: "https://images.heb.com/is/image/HEBGrocery/001504788?fit=constrain,1&wid=800&hei=800&fmt=jpg&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0", price: 7)
m11 = Medicine.create(name: "HealthA2Z Asprin", image: "https://m.media-amazon.com/images/I/61zkTXQpptS._AC_SX425_.jpg", price: 7)
m12 = Medicine.create(name: "Mucinex Maximum Strength", image: "https://m.media-amazon.com/images/I/81IRNdVPP7L._AC_SL1500_.jpg", price: 12)
m13 = Medicine.create(name: "Little Remedies", image: "https://m.media-amazon.com/images/I/71xY7Q+5G5L._AC_SL1500_.jpg", price: 5)
m14 = Medicine.create(name: "Imodium", image: "https://m.media-amazon.com/images/I/71869HojYGS._AC_SS450_.jpg", price: 7)

puts "seeds for User_Medicine"

um1 = UserMedicine.create(user_id: u1.id, medicine_id: m1.id, purchased: false)
# um2 = UserMedicine.create(user_id: u2.id, medicine_id: m2.id, purchased: false)
um3 = UserMedicine.create(user_id: u1.id, medicine_id: m2.id, purchased: false)
# um4 = UserMedicine.create(user_id: u2.id, medicine_id: m4.id, purchased: false)

um5 = UserMedicine.create(user_id: u1.id, medicine_id: m3.id, purchased: false)
um6 = UserMedicine.create(user_id: u1.id, medicine_id: m4.id, purchased: false)
um7 = UserMedicine.create(user_id: u1.id, medicine_id: m5.id, purchased: false)
um8 = UserMedicine.create(user_id: u1.id, medicine_id: m6.id, purchased: false)
um9 = UserMedicine.create(user_id: u1.id, medicine_id: m7.id, purchased: false)
um10 = UserMedicine.create(user_id: u1.id, medicine_id: m8.id, purchased: false)
um11 = UserMedicine.create(user_id: u1.id, medicine_id: m9.id, purchased: false)
um13 = UserMedicine.create(user_id: u1.id, medicine_id: m10.id, purchased: false)
um14 = UserMedicine.create(user_id: u1.id, medicine_id: m11.id, purchased: false)
um15 = UserMedicine.create(user_id: u1.id, medicine_id: m12.id, purchased: false)
um16 = UserMedicine.create(user_id: u1.id, medicine_id: m13.id, purchased: false)
um17 = UserMedicine.create(user_id: u1.id, medicine_id: m14.id, purchased: false)


# um5 = UserMedicine.create(user_id: u1.id, medicine_id: m5.id, purchased: nil)

puts "seed finished"