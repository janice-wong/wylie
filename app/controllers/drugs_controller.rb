class DrugsController < ApplicationController
  def index
    @drugs = Drug.all
    render 'index.html.erb'
  end
end
