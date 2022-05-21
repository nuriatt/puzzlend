class ReviewsController < ApplicationController
  before_action :set_puzzle

  def index
    @reviews = @puzzle.reviews
  end

  def new
    @review = @puzzle.reviews.new
  end

  def create
    @review = @puzzle.reviews.new(review_params)
    if @review.save
      redirect_to @puzzle, notice: 'Thanks for your review!'
    else
      render :new
    end
  end

  private

  def set_puzzle
    @puzzle = Puzzle.find(params[:puzzle_id])
  end

  def review_params
    params.require(:review).permit(:username, :stars, :comment)
  end
end
