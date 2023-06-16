require 'rest-client'

class Interface < ApplicationRecord

  def self.request(params)
    # params = { "question" => "Can I learn the contact information of Çukurova University?", "language" => "EN" }
    question = params["question"]
    language = params["language"].downcase
    url = "http://127.0.0.1:5000/ask"

    # response = RestClient.get(url, {params: {'question': question, 'language': language}})
    # response.body

    # puts response.body, response.code, response.message, response.headers.inspect
    "Return Answer"
  end
end
