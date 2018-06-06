 # Dado el array:
a = [1,2,3,9,1,4,5,2,3,6,6]
# 1. Crear un método para eliminar todos los números pares del arreglo.
def eliminar_pares(array)
  array.delete_if {|x| (x % 2).zero?}
  return array
end
# 2. Crear un método para obtener la suma de todos los elementos del arreglo Utilizando .each
def sumar_elementos(array)
  suma = 0
  array.each{|j| suma = suma + j}
  return suma
end
# 3. Crear un método para obtener el promedio de un arreglo.
def obtener_promedio(array)
  suma = 0
  array.each{|j| suma = suma + j}
  return suma/array.length
end
# 4. Crear un método que incrementa todos los elementos en una unidad y devuelva un arreglo nuevo.
def incrementar_elementos(array)
  x = Array.new()
  largo = array.length
  array.each do |j|
    x.push(j+1)
  end
  return x
end

# Dado el array:
a = [1,2,3,9,1,4,5,2,3,6,6]
puts 'Eliminar pares'
puts eliminar_pares(a)
# Dado el array:
a = [1,2,3,9,1,4,5,2,3,6,6]
puts 'Sumar elementos'
puts sumar_elementos(a)
# Dado el array:
a = [1,2,3,9,1,4,5,2,3,6,6]
puts 'Obtener promedio'
puts obtener_promedio(a)
# Dado el array:
a = [1,2,3,9,1,4,5,2,3,6,6]
puts 'Incrementar en 1'
puts incrementar_elementos(a)
