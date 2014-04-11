# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Account_Types"
cash = AccountType.find_or_create_by(name: 'Cash', desc: 'Cash', factor: 1, active: true)
bank = AccountType.find_or_create_by(name: 'Bank Account', desc: 'Bank account', factor: 1, active: true)
cc = AccountType.find_or_create_by(name: 'Credit Card', desc: 'Credit card', factor: -1, active: true)
AccountType.find_or_create_by(name: 'Test', desc: 'Test account', factor: 1, active: false)

puts "Seeding Currencies"
inr = Currency.find_or_create_by(name: "Indian Rupee", symbol:"Rs", active: true)
usd = Currency.find_or_create_by(name: "US Dolor", symbol:"$", active: true)
euro = Currency.find_or_create_by(name: "Euro", symbol:"E", active: true)
Currency.find_or_create_by(name: "Pakistan Rupee", symbol:"Rs", active: true)

puts "Seeding Accounts"
Account.find_or_create_by(name: 'Wallet', account_type_id: cash.id, init_amount: 10000, note: '', active: true, currency_id: inr.id)
Account.find_or_create_by(name: 'Salary', account_type_id: bank.id, init_amount: 10000, note: '', active: true, currency_id: inr.id)
Account.find_or_create_by(name: 'HDFC', account_type_id: cc.id, init_amount: 10000, note: '', active: true, currency_id: inr.id)

puts "Seeding Units"
Unit.find_or_create_by(name: "Killo Gram", symbol: "Kg", active: true, unit_type: "Mass", note:"")
Unit.find_or_create_by(name: "Gram", symbol: "g", active: true, unit_type: "Mass", note:"")
Unit.find_or_create_by(name: "Litre", symbol: "L", active: true, unit_type: "Volume", note:"")
Unit.find_or_create_by(name: "Mililitre", symbol: "ml", active: true, unit_type: "Volume", note:"")
Unit.find_or_create_by(name: "Meter", symbol: "m", active: true, unit_type: "Length", note:"")
Unit.find_or_create_by(name: "Units", symbol: "U", active: true, unit_type: "Unit", note:"")

puts "Seeding Categories"
kitchen = Category.find_or_create_by(parent_id: 1, name: 'Kitchen', active: true, note: '')
Category.find_or_create_by(parent_id: 1, name: 'Toiletries', active: true, note: '')
Category.find_or_create_by(parent_id: kitchen.id, name: 'Grocery', active: true, note: '')