# Ejercicio 1: Escribiendo un archivo básico
# Crear un método que reciba dos strings, este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.
# Crear un método similar al anterior, que además pueda recibir un arreglo. Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.
# Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.
# El retorno de los métodos debe devolver nil.


def create_index(text1, text2)
  File.open('index.html', 'w') do |file|
    file.puts "<p>#{text1}</p>"
    file.puts "<p>#{text2}</p>"
    file.close
  end
end

text1 = "sample1"
text2 = "sample2"

create_index(text1, text2)


def create_index2(text1, text2, array)
  File.open('inedx.html','w') do |file|
    file.puts "<p>#{text1}</p>"
    file.puts "<p>#{text2}</p>"
    file.puts "<ol>"
    array.each{|x|file.puts "<li>#{x}</li>"}
    file.puts "</ol>"
end
end

  text1 = "sample1"
  text2 = "sample1"
  array = [1, 2, 3, 4 ,5]

  create_index2(text1, text2, array)


def create_index3(text1, text2, array, color)
  File.open('inedx.html','w') do |file|
    file.puts "<p>#{text1}</p>"
    file.puts "<p>#{text2}</p>"
    file.puts "<ol>"
    array.each{|x|file.puts "<li>#{x}</li>"}
    file.puts "</ol>"
    file.puts color
    end
  end

  text1 = "sample1"
  text2 = "sample1"
  array = [1, 2, 3, 4 ,5]
  color = "<style>
           p{
             background-color: red;
           }
           </style>"

create_index3(text1, text2, array, color)


puts create_index3.nil?
