class MemberIndexFacade
  def order_of_the_phoenix(house)
    all_members = PotterService.fetch_members
    ootp_members = all_members.find_all {|member| member[:orderOfThePhoenix] == true && member[:house] == house}

    ootp_members.map do |member|
      Member.new(member)
    end
  end
end
