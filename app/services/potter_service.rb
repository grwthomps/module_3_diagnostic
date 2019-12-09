class PotterService
  def self.conn
    Faraday.new(url: "https://www.potterapi.com", params: {key: ENV['potter_api_key']}) do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.get_members(house)
    response = conn.get("/v1/characters")

    members = JSON.parse(response.body, symbolize_names: true)
  end
end
