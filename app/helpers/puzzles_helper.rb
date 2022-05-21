module PuzzlesHelper

  def price(puzzle)
    if puzzle.free?
      content_tag(:strong,"Free!")
    else
      content_tag(:strong, number_to_currency(puzzle.price, precision: 2, unit: "£")) + "/day"
    end
  end

end
