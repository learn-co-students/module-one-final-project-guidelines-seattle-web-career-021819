GAME_OF_THRONES_URL = "https://anapioficeandfire.com/api/"

class CLI








########## HELPER METHODS ############

	def self.get_json(url)
        response = RestClient.get(url)
        json = JSON.parse(response.body)
    end

    def uri_escape(term)
    	term.gsub(' ', '%20')
    end
end
