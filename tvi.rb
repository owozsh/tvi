# Para alterar os parâmetros da equação, basta modificar as variáveis globais a, b, c e d abaixo.

$a = 13
$b = 5
$c = 3
$d = 2

def print_points(points)
  puts '[' + points[0].round(5).to_s + ', ' + points[1].round(5).to_s + ']'
end

def calc_function(x)
  ($a * (x ** 3)) + ($b * (x ** 2)) + ($c * x) + $d
end

def is_next_to_origin(x)
  calc_function(x) > -0.005 && calc_function(x) < 0.005
end

def tvi()
  points = [-1, 1]
  step = 0.001
  
  while (true)
    print_points(points)

    return if (is_next_to_origin(points[0]) && is_next_to_origin(points[1]))

    points[0] += step unless is_next_to_origin(points[0])
    points[1] -= step unless is_next_to_origin(points[1])
  end
end

tvi()
