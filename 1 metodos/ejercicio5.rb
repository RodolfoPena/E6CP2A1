# Crear un método que reciba como parámetro dos números enteros positivos
# e imprima los números pares que existen entre esos dos números.
def pares_senor(a, b)
  (a..b).each { |j|
  if j.even?
    puts "#{j} es par"
  else
  end
   }
end
puts pares_senor(2,12)
