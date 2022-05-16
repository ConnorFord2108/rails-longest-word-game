# frozen_string_literal: true
require 'open-uri'

class GamesController < ApplicationController
  def new
    letters = ('a'..'z').to_a
    @game_letters = letters.shuffle[0..9]
  end

  def score
    @answer = params[:word].split('')
    letters_array = params[:game_letters].split('')
    letters_array.each do |x|
      if @answer.include?(x)
        @response = "Good Start"
      else @response = "Nope"
      end
  end
end
end
