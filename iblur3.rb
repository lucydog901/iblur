
class Image
  
  def initialize(array)
     @rows = array
  end

  def output_image
    @rows.each do |rows|
      puts rows.join
    end
  end

  def get_coord
    coords = []
    @rows.each_with_index do |current_row, row_index|
      current_row.each_with_index do |current_column, column_index|
        if current_column == 1 
          coords << [row_index, column_index] 
        end
      end
      coords.each do |row_index, column_index|
        @rows[row_index-1][column_index]=1 unless row_index == 0
        @rows[row_index+1][column_index]=1 unless row_index >= row_num-1
        @rows[row_index][column_index-1]=1 unless column_index == 0
        @rows[row_index][column_index+1]=1 unless column_index >= col_num-1
      end
    end
  end
  

  def row_num
   @rows.length
  end

  def col_num
   @rows[0].length
  end
end

 
image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
   ])
 
  image.output_image
  image.get_coord
  puts
  image.output_image