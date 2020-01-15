# Examples inspired by U. S. National Organic Standards

ORGANIC_PRODUCE = [
  "Strawberries",
  "Potatoes",
  "Grapes",
  "Avocadoes",
  "Asparagus"
]

CONVENTIONAL_PRODUCE = [
  "Grapefruit",
  "Pineapple",
  "Oranges",
  "Watermelon",
  "Eggplant"
]

def assembled_matrix
  # Build an array that contains both of the above arrays
  # This matrix will represent a produce storage room
  # Organic standards require that organic products be stored ABOVE conventional, not the other way around
  # Make sure conventional produce is first, on the 'zeroth' / 'bottom' shelf
  storage_room = [
    CONVENTIONAL_PRODUCE,
    ORGANIC_PRODUCE
  ]
  storage_room
end

def sorted_matrix
  # Using Array literal syntax only, build another nested array that
  # uses the arrays of conventional and organic produce as before.
  # However, this time, sort each internal array alphabetically by the first character
  ORGANIC_PRODUCE[0] = "Asparagus"
  ORGANIC_PRODUCE[1] = "Avocadoes"
  ORGANIC_PRODUCE[2] = "Grapes"
  ORGANIC_PRODUCE[3] = "Potatoes"
  ORGANIC_PRODUCE[4] = "Strawberries"

  CONVENTIONAL_PRODUCE[0] = "Eggplant"
  CONVENTIONAL_PRODUCE[1] = "Grapefruit"
  CONVENTIONAL_PRODUCE[2] = "Oranges"
  CONVENTIONAL_PRODUCE[3] = "Pineapple"
  CONVENTIONAL_PRODUCE[4] = "Watermelon"

  storage_room = [
    CONVENTIONAL_PRODUCE,
    ORGANIC_PRODUCE
  ]
  storage_room
end

def matrix_lookup(matrix, row, column)
  # Given any matrix (array of arrays), a row index and a column index,
  # Return the matrix's content at that row and and column
  return (matrix[column, row])
end

def matrix_update(matrix, row, column, new_value)
  # Given any matrix (array of arrays), a row index and a column index,
  # Update the matrix location at that row and column to have the value of new_value
  # Return the updated matrix
end
