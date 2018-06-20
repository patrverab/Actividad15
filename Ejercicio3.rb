# Ejercicio 3: Contando palabras
# Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total de palabras. El método debe devolver este valor.
# Crear un método similar para que además reciba -como argumento- un string. En este caso el método debe contar únicamente las apariciones de ese string en el archivo.

# def cantidad_palabras
# file = File.open('peliculas.txt','r')
# data = file.readlines.join.split(' ')
# file.close
# data.length
# end
#
# puts cantidad_palabras


def cantidad_2(strings)
file = File.open('peliculas.txt','r')
data = file.readlines.join.downcase.split(strings.downcase)
file.close
data.length-1
end

puts cantidad_2("Guerra")
