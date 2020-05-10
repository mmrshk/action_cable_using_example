class LandingController < ApplicationController
  def index
    @left_matrices = LeftMatrix.all
    @right_matrices = RightMatrix.all
  end
end
