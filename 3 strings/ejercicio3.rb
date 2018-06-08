# Dado los arrays, obtener:
# 1. La concatenación de a y b. (hint: Los elementos que se repiten en a y b pueden aparecer dos veces en el resultado).
# 2. La unión de a y b. (hint: Los elementos que se repiten en a y b NO deben aparecer repetidos en el resultado).
# 3. La intersección de a y b. (hint: El resultado debe estar compuesto por los elementos que se repiten en a y b).
# 4. Intercalar los elementos: [[1, "lunes"], [2, "martes"], [3, "miércoles"], [9, "jueves"], [12, "viernes"], [31, "sábado"], ["domingo", "domingo"]]

a = [1, 2, 3, 9, 12, 31, 'domingo']
b = %w[lunes martes miercoles jueves viernes sabado domingo]

def concatenar(a,b)
  return a + b
end

def concatenar_sin_repetir(x,y)
  z = x + y
  return z.uniq
end

def concatenar_con_repetir(x,y)
  return x&y
end
def intercalar(x,y)
  return x.zip y
end

puts "Concatenar a y b"
print concatenar(a,b)
puts ""
puts 'Concatenar sin repetir'
print concatenar_sin_repetir(a,b)
puts ""
puts 'Concatenar con repetir'
print concatenar_con_repetir(a,b)
puts ""
puts 'Intercalar elementos'
print intercalar(a,b)
