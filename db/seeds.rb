# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


khabib = Fighter.create(name: "Khabib", style: "Sambo", fighting_record: "29-0")
kamaru = Fighter.create(name: "Kamaru Usman", style: "freestyle wrestling", fighting_record: "17-1-0")
gilbert = Fighter.create(name: "Gilbert Burns", style: "submission", fighting_record: "19-3-0")
maycee = Fighter.create(name: "Maycee Barber", style: "Karate", fighting_record: "8-1-0")
alexa = Fighter.create(name: "Alexa Grasso", style: "Jiu Jitsu", fighting_record: "12-3-0")
keiven = Fighter.create(name: "Keiven Gastelum", style: "Wrestling", fighting_record: "16-6-0")
ian = Fighter.create(name: "Ian Heinisch", style: "Muay thai", fighting_record: "14-3-0")

# Platform

hbo = Platform.create(name: "HBO")
espn = Platform.create(name: "ESPN")
youtube = Platform.create(name: "Youtube")
payper = Platform.create(name: "PayPer View")

# Events

ufc258 = Event.create(platform_id: 1, name: "UFC 258", location: "UFC Apex") 
ufc256 = Event.create(platform_id: 2, name: "UFC 256", location: "UFC Apex") 
ufc257 = Event.create(platform_id: 3, name: "UFC 257", location: "Madison Square Garden") 
ufc259 = Event.create(platform_id: 4, name: "UFC 259", location: "Abu Dhabi") 

# Schedules


