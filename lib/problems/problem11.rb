class Problem11 < ProjectEuler::Problem
  def horizontal_product_of_index_in_grid(i, grid)
    if i < 340
      grid[i] * grid[i+20] * grid[i+40] * grid[i+60]
    else
      0
    end
  end

  def vertical_product_of_index_in_grid(i, grid)
    if i % 20 < 17 and i < 397
      grid[i] * grid[i+1] * grid[i+2] * grid[i+3]
    else 
      0
    end
  end

  def forward_diagonal_product_of_index_in_grid(i, grid)
    if i % 20 > 3 and i < 333
      grid[i] * grid[i+19] * grid[i+38] * grid[i+57]
    else 
      0
    end
  end

  def backward_diagonal_product_of_index_in_grid(i, grid)
    if i % 20 < 17 and i < 337
      grid[i] * grid[i+21] * grid[i+42] * grid[i+63]
    else 
      0
    end
  end
  
  def solve 
    file = File.open('./lib/data/problem11_data.txt', 'rb')
    grid = file.read.split(' ').map(&:to_i)
    file.close
    
    max = 0

    (0...grid.count).each do |i|
    		largest_product_of_i = [horizontal_product_of_index_in_grid(i, grid), 
    														vertical_product_of_index_in_grid(i, grid), 
    														forward_diagonal_product_of_index_in_grid(i, grid), 
    														backward_diagonal_product_of_index_in_grid(i, grid)].max

    		max = largest_product_of_i > max ? largest_product_of_i : max
    end

    max
  end
end