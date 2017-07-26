#Multi-game Fighting Tournament
tournament = {
	sfv: {
		attendees: {
			names: ["jwong", "infiltration", "daigo"],
			count: 3
		},
		setups: {
			tables: 10,
			chairs: 40,
			outlets: 40,
			tvs: 20,
			consoles: 20
		},
		streams: ["spooky", "8wayrun"],
		waves: {
			a: 30,
			b: 30
		}
	},

	melee: {
		attendees: {
			names: ["mango", "hbox", "armada", "pp", "leffen"],
			count: 5
		},
		setups: {
			tables: 15,
			chairs: 60,
			outlets: 70,
			tvs: 80,
			consoles: 30
		},
		streams: ["vgbc", "meleeeveryday"],
		waves: {
			a: 40,
			b: 50,
			c: 30
		}
	},

	pm: {
		attendees: {
			names: ["switch", "sothe", "hyperflame", "techboy", "llod", "lunchables"],
			count: 6
		},
		setups: {
			tables: 13,
			chairs: 55,
			outlets: 60,
			tvs: 50,
			consoles: 25
		},
		streams: ["azpm", "balcony", "shinecorp"],
		waves: {
			a: 40,
			b: 50,
			c: 30,
			d: 45
		}
	}
}

#print each event's information on a (messy) line
tournament.each {|key, value| puts "#{key}: #{value}"}
puts

#print information for each event on a separate line
access = tournament.keys
(0...access.length).each do |x|  
	puts access[x]
	tournament[access[x]].each do |key, value|
		puts "#{key}: #{value}"
	end
	puts
end


#print streams for sfv
print tournament[:sfv][:streams]
puts
puts

#print # of attendees in wave a for pm:
puts tournament[:pm][:waves][:a]
puts

#add "plup" to list of attendees for melee and print updated list.
tournament[:melee][:attendees][:names].push("plup")
print tournament[:melee][:attendees][:names]
puts
puts

#update number of chairs for pm and print updated number
tournament[:pm][:setups][:chairs] = 30
puts tournament[:pm][:setups][:chairs]