num = [1,5,8,9,2,0]
ber = [3,1,8,7,9,5]
foo = [num,ber]


foo.each_with_index do |f,i|
  f.each_with_index do |n,x|
    puts "index one #{i} #{x}"
  end
end

