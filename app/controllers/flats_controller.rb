require "open-uri"

class FlatsController < ApplicationController
  URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze

  before_action :set_flats
  before_action :set_flat, only: :show

  def index
  end

  def show
  end

  def set_flats
    @flats = JSON.parse(open(URL).read)
  end

  def set_flat
    @flat = flats.find { |flat| flat['id'] == params['id'].to_i }
  end
end
