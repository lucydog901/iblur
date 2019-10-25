
class Image

  def initialize(array)
     @rows = array
  end

  def output_image
    @rows.each do |rows|
      puts rows.join
    end
  end

  def get_coord(blurdistance)
    coords = []
    @rows.each_with_index do |current_row, row_index|
      current_row.each_with_index do |current_column, column_index|
        if current_column == 1
          coords << [row_index, column_index]
        end
      end
    end

      @rows.each_with_index do |row, row_index| 
        row.each_with_index do |col, col_index|
          coords.each do |coord| 
            m_dist = distance(coord,[row_index, col_index])
            if  m_dist <= blurdistance # 2
              @rows[row_index][col_index] = 1
            end
          end 
        end 
      end 
    end 


  def row_num
   @rows.length
  end

  def col_num
   @rows[0].length
  end
#coord: (row_index, column_index)  (x, y)
  def distance(point1,point2)
    xdist=(point1[0]-point2[0]).abs #row
    ydist=(point1[1]-point2[1]).abs #col
    manhattandistance = xdist+ydist
    return manhattandistance
  end
end


image = Image.new([
    [0, 0, 0, 0], 
    [0, 1, 0, 0], 
    [0, 0, 0, 1], 
    [0, 0, 0, 0]  
   ])

  image.output_image
  image.get_coord(2)
  image.output_image
