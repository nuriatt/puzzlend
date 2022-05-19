class PuzzlesController < ApplicationController

  # READ

  def index
    @puzzles = Puzzle.all
  end

  def show
    @puzzle = find_puzzle
    @booking = Booking.new
  end

  # UPDATE

  def edit
    @puzzle = find_puzzle
  end

  def update
    @puzzle = find_puzzle
    @puzzle.update(puzzle_params)
    redirect_to @puzzle
  end

  # CREATE

  def new
    @puzzle = Puzzle.new
  end

  def create
    @puzzle = Puzzle.new(puzzle_params)
    @puzzle.user = current_user
    @puzzle.save
    if @puzzle.save
      redirect_to my_puzzles_path, notice: 'New puzzle created!'
    else
      render :new
    end
  end

  private

  def find_puzzle
    Puzzle.find(params[:id])
  end

  def puzzle_params
    params.require(:puzzle).permit(:name, :description, :price, :pieces, :photo)
  end
end
