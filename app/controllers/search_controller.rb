class SearchController < ApplicationController
  def index
    @house = params[:house]

    render locals: {
      house: params[:house],
      members: MemberIndexFacade.new
    }
  end
end
