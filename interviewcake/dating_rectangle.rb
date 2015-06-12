def love_intersexion (rectangle_1, rectangle_2)
  rectangle_1_x_range = [rectangle_1[:x], rectangle_1[:x] + rectangle_1[:width]]
  rectangle_1_y_range = [rectangle_1[:y], rectangle_1[:y] + rectangle_1[:height]]
  # [1,11], [5, 9]

  rectangle_2_x_range = [rectangle_2[:x], rectangle_2[:x] + rectangle_2[:width]]
  rectangle_2_y_range = [rectangle_2[:y], rectangle_2[:y] + rectangle_2[:height]]
  # [8, 12], [7, 16]

  overlap_rect = {}
  if rectangle_2[:x] <= rectangle_1_x_range[1]
    overlap_rect[:x] = rectangle_2[:x]
  elsif rectangle_1[:x] <= rectangle_2_x_range[1]
    overlap_rect[:x] = rectangle_1[:x]
  end
  if rectangle_2[:y] <= rectangle_1_y_range[1]
    overlap_rect[:y] = rectangle_2[:y]
  elsif rectangle_1[:y] <= rectangle_2_y_range[1]
    overlap_rect[:y] = rectangle_2[:y]
  end

  overlap_rect[:width] = rectangle_1_x_range[1] - rectangle_2_x_range[0]
  overlap_rect[:height] = rectangle_1_y_range[1] - rectangle_2_y_range[0]

  overlap_rect
end


rectangle_1 = { x: 1,
                y: 5,
                width: 10,
                height: 4
              }
rectangle_2 = { x: 8,
                y: 7,
                width: 4,
                height: 9
              }

p love_intersexion(rectangle_1, rectangle_2)

#HELPER METHODS
def find_x_overlap (x1, width1, x2, width2)
  highest_starting_point = [x1, x2].max
  lowest_ending_point = [x1+width1, x2+width2].min

  if highest_starting_point >= lowest_ending_point
    return [none, none]
  end

  overlap_width = lowest_ending_point - highest_starting_point
  {starting_point: highest_starting_point, overlap_width: overlap_width}
end

def find_y_overlap (y1, height1, y2, height2)
  highest_starting_point = [y1, y2].max
  lowest_ending_point = [y1+height1, y2+height2].min

  if highest_starting_point >= lowest_ending_point
    return [none, none]
  end

  overlap_height = lowest_ending_point - highest_starting_point
  {starting_point: highest_starting_point, overlap_height: overlap_height}
end
p "*" * 100
p find_x_overlap(1, 10, 4, 8)
#REFACTOR

def love_intersexion(rectangle_1, rectangle_2)
  rectangle_1[:x]
  x_overlap = find_x_overlap (rectangle_1[:x],rectangle_1[:width],rectangle_2[:x],rectangle_2[:width])
  y_overlap = find_y_overlap (rectangle_1[:y],rectangle_1[:height],rectangle_2[:y],rectangle_2[:height])

  intersexion_rectangle = { x: x_overlap[:starting_point],
                            y: y_overlap[:starting_point],
                            width: x_overlap[:overlap_width],
                            height: y_overlap[:overlap_height] }
end

love_intersexion(rectangle_1, rectangle_2)
