module PuzzlesHelper

  def price(puzzle)
    if puzzle.free?
      "Free!"
    else
      number_to_currency(puzzle.price, precision: 2, unit: "£")
    end
  end

end
