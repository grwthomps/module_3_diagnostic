class MemberIndexFacade
  def get_all_members
    PotterService.fetch_members
  end

  def order_of_the_phoenix(house)
    ootp_members = get_all_members.find_all {|member| member[:orderOfThePhoenix] == true && member[:house] == house}

    ootp_members.map do |member|
      Member.new(member)
    end
  end
end
