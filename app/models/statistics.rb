module Statistics

  def Statistics.correlation x, y
    sum_x = x.inject :+
    sum_y = y.inject :+
    sum_x_square = x.inject(0) { |acc, v| acc + v ** 2 }
    sum_y_square = y.inject(0) { |acc, v| acc + v ** 2 }
    sum_xy = x.zip(y).inject(0) { |acc, v| acc + v[0] * v[1] }
    n = x.size

    ((n * sum_xy) - (sum_x * sum_y)) /
      (Math.sqrt((n * sum_x_square) - (sum_x ** 2)) * Math.sqrt((n * sum_y_square) - (sum_y ** 2)))
  end
end
