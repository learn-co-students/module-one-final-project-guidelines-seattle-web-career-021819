class Seed

		def self.run
			puts "running the seed"
			count = 1
			json = self.get_json(GAME_OF_THRONES_URL+"characters/#{count}")



			# json["characters"].each do |character_url|
			# 	character_json = self.get_json(character_url)
			# 		Character.create(:name => character_json["name"], :house => character_json["house"], :seasons => character_json["tvSeries"], :books => character_json["books"])
			# end
		end

		def self.get_json(url)
        	response = RestClient.get(url)
        	json = JSON.parse(response.body)
    	end
end