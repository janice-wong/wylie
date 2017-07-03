class Api::V1::DrugsController < ApplicationController
  def index
    @drugs = Drug.all
    render 'index.json.jbuilder'
  end

  def search
    @drugs = []
    params[:search].each do |drug_name|
      @drugs << Drug.find_by(name: drug_name)
    end
    render 'search.json.jbuilder'
  end
end
