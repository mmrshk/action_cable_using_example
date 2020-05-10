class MatrixService
  def self.call(params: params)
    left_matrix = LeftMatrix.find_by(id: params[:left_matrix]).matrix
    right_matrix = RightMatrix.find_by(id: params[:right_matrix]).matrix

    Matrix.columns(left_matrix) * Matrix.rows(right_matrix)
  end
end
