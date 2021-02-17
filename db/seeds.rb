# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fighter.destroy_all
Event.destroy_all
Platform.destroy_all

#Fighters

khabib = Fighter.create(name: "Khabib", style: "Sambo", fighting_record: "29-0", image_url: "https://media.gettyimages.com/photos/khabib-nurmagomedov-of-russia-celebrates-his-submission-victory-over-picture-id1166604497?s=612x612")
kamaru = Fighter.create(name: "Kamaru Usman", style: "freestyle wrestling", fighting_record: "17-1-0", image_url: "https://images-na.ssl-images-amazon.com/images/I/41U6YaL1t-L._AC_.jpg")
gilbert = Fighter.create(name: "Gilbert Burns", style: "submission", fighting_record: "19-3-0", image_url: "https://i.ytimg.com/vi/YOWv7qvkNYU/maxresdefault.jpg")
maycee = Fighter.create(name: "Maycee Barber", style: "Karate", fighting_record: "8-1-0", image_url: "https://assets-cms.thescore.com/uploads/image/file/400533/w640xh480_GettyImages-1200203151.jpg?ts=1586975232")
alexa = Fighter.create(name: "Alexa Grasso", style: "Jiu Jitsu", fighting_record: "12-3-0", image_url: "https://cdn.shopify.com/s/files/1/1892/6857/collections/IMG_3437_590x.jpg?v=1561088674")
mcgeror = Fighter.create(name: "Conor Mcgregor", style: "Martial arts", fighting_record: "22-5-0", image_url: "https://cnet4.cbsistatic.com/img/9XTushsU2RAjBX3CyYFRsBNZ5Cc=/940x0/2020/01/14/af9ce5fe-22e9-4508-81a3-d43540fc0e6d/gettyimages-592224614.jpg")
dustin = Fighter.create(name: "Dustin Poirier", style: "boxing", fighting_record: "27-3-0", image_url: "https://www.thesun.co.uk/wp-content/uploads/2020/10/NINTCHDBPICT000611984614.jpg?strip=all&w=640")

#PLatform

platform_one = Platform.create(name: 'ESPN')
platform_second = Platform.create(name: 'YouTube')
platform_three = Platform.create(name: 'HBO')
platform_four = Platform.create(name: 'PayPer View')

#Events


ufc258 = Event.create(platform_id: platform_one.id, name: "UFC 258", location: "UFC Apex", image_url: "https://cdn.vox-cdn.com/thumbor/ZuBjUjBCRrSYF7diR4ZJw-5iD9U=/0x0:4465x3108/920x613/filters:focal(1805x0:2519x714):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/68813395/1301819163.0.jpg")
ufc256 = Event.create(platform_id: platform_four.id, name: "UFC 256", location: "UFC Apex", image_url: "https://www.168moviestream.com/wp-content/uploads/2020/12/ufc-256-1.jpg")
ufc257 = Event.create(platform_id: platform_second.id, name: "UFC 257", location: "Madison Square Garden", image_url: "https://cdn-wp.thesportsrush.com/2020/11/fc625d3b-ufc-257.jpg")
ufc259 = Event.create(platform_id: platform_three.id, name: "UFC 259", location: "Abu Dhabi", image_url: "https://www.fightsports.tv/wp-content/uploads/Eqh836OXMAIYc2a.jpg")

# schedules

schedule1 = Schedule.create(fighter_id: kamaru.id, event_id: ufc258.id)
schedule2 = Schedule.create(fighter_id: gilbert.id, event_id: ufc258.id)
