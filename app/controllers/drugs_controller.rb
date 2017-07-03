class DrugsController < ApplicationController
  def search
    
  end

  def index
    @drugs = Drug.all
  end
end
