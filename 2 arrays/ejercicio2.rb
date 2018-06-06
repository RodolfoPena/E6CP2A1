# Dado el array:
# 1. Eliminar el último elemento.
# 2. Eliminar el primer elemento.
# 3. Eliminar el elemento que se encuentra en la posición media,
#    si el arreglo tiene un número par de elementos entonces remover
#    el que se encuentre en la mitad izquierda, ejemplo:
#    en el arreglo [1,2,3,4] se removería el elemento 2.
# 4. Borrar el último elemento mientras ese número sea distinto a 1.
# 5. Utilizando un arreglo vacío auxiliar y operaciones de push y pop:
#    invertir el orden de los elementos en un arreglo.


# 1. Eliminar el último elemento.
a = [1,2,3,9,1,4,5,2,3,6,6]
a.delete_at(a.index(a.last))
puts 'Elimino el último'
puts a
# 2. Eliminar el primer elemento.
a = [1,2,3,9,1,4,5,2,3,6,6]
a.delete_at(a.index(a.first))
puts 'Elimino el primero'
puts a
# 3. Eliminar el elemento que se encuentra en la posición media,
#    si el arreglo tiene un número par de elementos entonces remover
#    el que se encuentre en la mitad izquierda, ejemplo:
#    en el arreglo [1,2,3,4] se removería el elemento 2.
a = [1,2,3,9,1,4,5,2,3,6,6]
def eliminar_termino_medio (array)
  if (array.length % 2).zero?
    return array.delete_at((array.length/2 - 1))
  else
    return array.delete_at((array.length/2).round)
  end
end
puts 'Elimino el medio'
puts eliminar_termino_medio(a)
puts a

# 4. Borrar el último elemento mientras ese número sea distinto a 1.
a = [1,2,3,9,1,4,5,2,3,6,6]
def eliminar_ultimo_distinto_a_1(array)
  if array.last != 1
    array.delete_at(array.index(array.last))
  end
  return array
end
puts 'Elimino el ultimo si es 1'
puts eliminar_ultimo_distinto_a_1(a)

# 5. Utilizando un arreglo vacío auxiliar y operaciones de push y pop:
#    invertir el orden de los elementos en un arreglo.
a = [1,2,3,9,1,4,5,2,3,6,6]
def invertir(array)
  x = Array.new()
  largo = array.length
  largo.times do
    x.push(array.pop)
  end
  puts x
end
puts 'Arreglo invertido'
invertir(a)
