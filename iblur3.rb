
class Image
  
  def initialize(array)
     @row = array
  end

  def output_image
    @row.each do |row|
      puts row.join
  end

  end
end
 
image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
   ])

 image.output_image