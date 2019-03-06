class Seed

		def self.run
			puts "Seeding data into local database..."

			###### Load characters ######
			count = 0
			while count < 2134
				character_hash = GameOfThronesApi.get_characters[count]
				Character.create(:name => character_hash["name"], :seasons => character_hash["tvSeries"], :books => character_hash["books"], :character_url => "https://anapioficeandfire.com/api/characters/#{count + 1}")
				count += 1
			end

			###### Load houses ######
			count_two = 0
			while count_two < 443
				house_hash = GameOfThronesApi.get_houses[count_two]
				House.create(:name => house_hash["name"], :members => house_hash["swornMembers"], :coat_of_arms => house_hash["coatOfArms"], :house_url => "https://anapioficeandfire.com/api/houses/#{count_two + 1}")
				count_two += 1
			end

			##### Load books #####
			count_three = 0
			while count_three < 11
				book_hash = GameOfThronesApi.get_books[count_three]
				Book.create(:name => book_hash["name"], :characters => book_hash["characters"], :book_url => "https://anapioficeandfire.com/api/books/#{count_three + 1}")
				count_three += 1
			end

		end

		def self.get_json(url)
        	response = RestClient.get(url)
        	json = JSON.parse(response.body)
    	end
end