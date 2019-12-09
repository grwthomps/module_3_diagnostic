class Member
  attr_reader :name, :role, :house, :patronus, :ootp

  def initialize(member)
    @name = member[:name]
    @role = member[:role]
    @house = member[:house]
    @patronus = member[:patronus]
    @ootp = member[:orderOfThePhoenix]
  end
end
