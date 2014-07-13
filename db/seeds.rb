# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = Project.create([{title:"3D Design Project",
	subtitle:"3D Design Subtitle",
	description:"Lorizzle ipsum boom shackalack sit amizzle, i'm in the shizzle adipiscing its fo rizzle. Yippiyo sapien velizzle, doggy volutpizzle, suscipizzle quizzle, fo shizzle my nizzle vizzle, arcu. Pellentesque egizzle bizzle. Break it down erizzle. Fusce izzle shizzlin dizzle fizzle izzle tempus my shizz. Maurizzle pellentesque nibh et turpizzle. Shizzlin dizzle in tortizzle. Pellentesque eleifend rhoncizzle nisi. In tellivizzle bizzle platea dictumst. Bizzle funky fresh. Gangsta i'm in the shizzle, get down get down eu, mattizzle ac, shizzlin dizzle vitae, go to hizzle. Tellivizzle that's the shizzle. Integer semper velit sizzle ass.",
	section:"design",
	images:"../assets/si_1.jpeg,../assets/si_2.jpeg,../assets/si_3.jpeg,../assets/si_4.png",
	videos:"xjjl9zeJjzw"},{
		title:"Digital Art Project",
		subtitle:"Digital Art Subtitle",
		description:"Lorizzle ipsum boom shackalack sit amizzle, i'm in the shizzle adipiscing its fo rizzle. Yippiyo sapien velizzle, doggy volutpizzle, suscipizzle quizzle, fo shizzle my nizzle vizzle, arcu. Pellentesque egizzle bizzle. Break it down erizzle. Fusce izzle shizzlin dizzle fizzle izzle tempus my shizz. Maurizzle pellentesque nibh et turpizzle. Shizzlin dizzle in tortizzle. Pellentesque eleifend rhoncizzle nisi. In tellivizzle bizzle platea dictumst. Bizzle funky fresh. Gangsta i'm in the shizzle, get down get down eu, mattizzle ac, shizzlin dizzle vitae, go to hizzle. Tellivizzle that's the shizzle. Integer semper velit sizzle ass.",
		section:"art",
		images:"../assets/si_1.jpeg,../assets/si_2.jpeg,../assets/si_3.jpeg,../assets/si_4.png"},{
			title:"Visual Effects Project",
			subtitle:"Visual Effects Subtitle",
			description:"Lorizzle ipsum boom shackalack sit amizzle, i'm in the shizzle adipiscing its fo rizzle. Yippiyo sapien velizzle, doggy volutpizzle, suscipizzle quizzle, fo shizzle my nizzle vizzle, arcu. Pellentesque egizzle bizzle. Break it down erizzle. Fusce izzle shizzlin dizzle fizzle izzle tempus my shizz. Maurizzle pellentesque nibh et turpizzle. Shizzlin dizzle in tortizzle. Pellentesque eleifend rhoncizzle nisi. In tellivizzle bizzle platea dictumst. Bizzle funky fresh. Gangsta i'm in the shizzle, get down get down eu, mattizzle ac, shizzlin dizzle vitae, go to hizzle. Tellivizzle that's the shizzle. Integer semper velit sizzle ass.",
			section:"effects",
			images:"../assets/si_1.jpeg,../assets/si_2.jpeg,../assets/si_3.jpeg,../assets/si_4.png",
			videos:"xjjl9zeJjzw"}])
puts "Projects seeded!"

static_data = StaticData.create(
	[
		{
			owner_page:"home",
			content:"Welcome",
			slideshow:true,
			sdata:"../assets/si_1.jpeg,../assets/si_2.jpeg,../assets/si_3.jpeg,../assets/si_4.png"
		},
		{
			owner_page:"about",
			content:"About"
		},
		{
			owner_page:"contact",
			content:"Contact"
		}
	]
)
puts "Static data seeded!"

passwords = Password.create(password_digest:"3972698d40615a763913d9ae21d117115ff51aa6")
puts "Password seeded!"
