class SearchController < ApplicationController
  def index
    house = params[:house]

    conn = Faraday.new(url: "https://www.potterapi.com", params: {key: ENV['potter_api_key']}) do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("/v1/characters")

    members = JSON.parse(response.body, symbolize_names: true)

    binding.pry
  end
end
