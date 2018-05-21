class BoardController < ApplicationController
  layout 'board'
  def initialize
    sugar
    begin
        @board_data = JSON.parse(File.read("data.txt"))
    rescue
        @board_data = Hash.new
    end

    @board_data.each do |key,obj|
      if Time.now.to_i - key.to_i > 24*60*60 then


      end
  end
  def index
  end
end
