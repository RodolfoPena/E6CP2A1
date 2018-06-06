# Construir un arreglo de los nombres de todos sus compañeros y en base a él:
db = %w(Rodolfo Diego Patricia angel Roberto Soledad)
# 1. Imprimir todos los elementos que excedan más de 5 caracteres.
def imprimir_nombres_largos (array)
  array.each do |j|
    puts j if j.length > 5
  end
end
# 2. Crear un arreglo nuevo con todos los elementos en minúscula.

def capitalize?(str)
  if str.capitalize == str
    true
  else
    false
  end
end

def nueva_db_minusculas(array)
  new_array = Array.new()
  largo = array.length
  largo.times do |j|
    new_array.push(array[j]) if capitalize?(array[j]) == true
  end
  puts new_array
end

# 3. Crear un método que devuelva un arreglo con la cantidad de caracteres que tiene cada nombre.
def caracteres_por_nombre(array)
  new_array = Array.new()
  largo = array.length
  largo.times do |j|
    new_array.push(array[j].length)
  end
  final_array = array.zip new_array
  print final_array
end
db = %w(Rodolfo Diego Patricia angel Roberto Soledad)
imprimir_nombres_largos(db)
db = %w(Rodolfo Diego Patricia angel Roberto Soledad)
nueva_db_minusculas(db)
db = %w(Rodolfo Diego Patricia angel Roberto Soledad)
caracteres_por_nombre(db)
