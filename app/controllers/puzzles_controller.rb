class PuzzlesController < ApplicationController

  # READ

  def index
    @puzzles = Puzzle.all
  end

  def show
    @puzzle = find_puzzle
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
    @puzzle.save
    redirect_to @puzzle
  end

  private

  def find_puzzle
    Puzzle.find(params[:id])
  end

  def puzzle_params
    params.require(:puzzle).permit(:name, :description, :price)
  end
end
