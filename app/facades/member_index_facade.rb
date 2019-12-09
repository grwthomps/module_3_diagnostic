class MemberIndexFacade
  def order_of_the_phoenix(house)
    members = PotterService.get_members(house)
  end
end
