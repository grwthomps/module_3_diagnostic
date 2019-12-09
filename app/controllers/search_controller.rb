class SearchController < ApplicationController
  def index
    render locals: {
      house: params[:house],
      members: MemberIndexFacade.new
    }
  end
end
