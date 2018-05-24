class HelloController < ApplicationController
layout 'hello'
  def index
  @header = 'layout sample'
  @footer = 'copyright Nakanishi-Jun 2018.'
  @title = 'New Layout'
  @msg = 'this is sample page!'
  end
end
