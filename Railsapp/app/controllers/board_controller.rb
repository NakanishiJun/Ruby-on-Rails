class BoardController < ApplicationController
  layout 'board'
  def initialize
    super
    begin
        @board_data = JSON.parse(File.read("data.txt"))
    rescue
        @board_data = Hash.new
    end

    @board_data.each do |key,obj|
      if Time.now.to_i - key.to_i > 24*60*60 then
        @board_data.delete(key)
      end
    end
  end
  def index
    if request.post? then
      obj = MyData.new(msg:params['msg'], name:params['name'], mail:params['mail'])
      @board_data[Time.now.to_i] = obj
      data = @board_data.to_json
      File.write("data.txt", data)
      @board_data = JSON.parse(data)
    end
  end

end

class MyData
  attr_accessor :name
  attr_accessor :mail
  attr_accessor :msg

  def initialize msg:msg, name:name, mail:mail
    self.name = name
    self.mail = mail
    self.msg = msg
  end
end
