class Api::GreetingsController < ApplicationController
  def index
    offset = rand(Message.count)
    @random_record = Message.offset(offset).first
    render json: @random_record, only: :greeting
  end
end
