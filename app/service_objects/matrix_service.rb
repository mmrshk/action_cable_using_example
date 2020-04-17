class MatrixService
  def self.call(params: params)
    first_matrix = Matrix[[params[:first_field_11].to_i, params[:first_field_12].to_i],
                          [params[:first_field_21].to_i, params[:first_field_22].to_i]]

    second_matrix = Matrix[
      [params[:second_field_11].to_i, params[:second_field_12].to_i, params[:second_field_13].to_i],
      [params[:second_field_21].to_i,  params[:second_field_22].to_i, params[:second_field_23].to_i]
    ]

    first_matrix * second_matrix
  end
end
