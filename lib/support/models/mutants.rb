require "httparty"

class Mutants
        def retrieve_mutants(id = "")
          @url = "https://mutant-school.herokuapp.com/"
          @path = "api/v1/mutants/#{id}"
          retrieve_mutant_path = @url + @path
          HTTParty.get(retrieve_mutant_path,
                                   :headers => { "Content-Type" => "Application/JSON"
                                   })
        end
 end