require 'matrix'

class MessagesController < ApplicationController
  def create
    @multiplication_result = MatrixService.call(params: params_multiplication)

    if @multiplication_result
      ActionCable.server.broadcast 'room_channel',
                  content: @multiplication_result
    end
  end

  private

  def params_multiplication
    params.permit(:authenticity_token, :commit, :left_matrix, :right_matrix)
  end
end
