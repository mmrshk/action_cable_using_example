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
    params.permit(:authenticity_token, :commit, :first_field_11, :first_field_12, :first_field_21, :first_field_22,
                  :second_field_11, :second_field_12, :second_field_21, :second_field_22, :second_field_13,
                  :second_field_23)
  end
end
