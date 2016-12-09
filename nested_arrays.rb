# def ajedrez(tablero)
#   tablero.each do |valor|
#     valor.each do |valor|
#       printf "%-12s",valor
#     end
#    puts 
#   end
#   puts
# end

def hacer_tablero
  tablero_vacio = Array.new(8) { Array.new(8)}
  piezas = ["torre","caballo","alfil","reyna","rey", "alfil", "caballo","torre", "peon"]
  color = ["blanco", "negro"]
  for i in  0..7
    for j in 0..7
      if i == 0 
        tablero_vacio[i][j] = piezas[j] + "-" + color[0]
        printf "%-16s",tablero_vacio[i][j]
        puts if j == 7 
      elsif i == 1
        tablero_vacio[i][j] = piezas[-1] + "-" + color[0]
        printf "%-16s",tablero_vacio[i][j]
        puts if j == 7 
      elsif i % 2 == 0 && i < 6
        if j % 2 == 0
          tablero_vacio[i][j] = color[0]
        else
          tablero_vacio[i][j] = color[1]
        end
        printf "%-16s",tablero_vacio[i][j]
        puts if j == 7 
      elsif i % 2 != 0 && i < 6
        if j % 2 == 0
          tablero_vacio[i][j] = color[1]
         else
          tablero_vacio[i][j] = color[0]
        end
        printf "%-16s",tablero_vacio[i][j]
        puts if j == 7 
      elsif i == 6
          tablero_vacio[i][j] = piezas[-1] + "-" + color[1]
          printf "%-16s",tablero_vacio[i][j]
          puts if j == 7 
      else
        tablero_vacio[i][j] = piezas[j] + "-" + color[1]
        printf "%-16s",tablero_vacio[i][j]
        puts if j == 7 
      end
    end
  end
  
end

# p ajedrez([["torre_b ", "caballo_b", "alfil_b", "reyna_b", "rey_b", "alfil_b", "caballo_b", "torre_b"],
#               ["peon_b ", "peon_b ", "peon_b", "peon_b", "peon_b", "peon_b", "peon_b", "peon_b",],
#               ["b", "n", "b", "n", "b", "n", "b", "n", ],
#               ["n", "b","n", "b","n", "b","n", "b",],
#               ["b", "n", "b", "n", "b", "n", "b", "n", ],
#               ["n", "b","n", "b","n", "b","n", "b",],
#               ["peon_n", "peon_n", "peon_n", "peon_n", "peon_n", "peon_n", "peon_n", "peon_n",], 
#               ["torre_n", "caballo_n", "alfil_n", "reyna_n", "rey_n", "alfil_n", "caballo_n", "torre_n"]])

table = [["Nombre","Edad","Genero", "Grupo", "Calificaciones"],
        ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8] ],
        ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
        ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
        ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],
        ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]]

# | Nombre           | Edad | Genero   | Grupo  | Calificaciones |
# +------------------+------+----------+--------+----------------+
# |Rodrigo García    | 13   |Masculino |Primero  |[9, 9, 7, 6, 8] |                 
# |Fernanda Gonzalez | 12   |Femenino  |Tercero   |[6, 9, 8, 6, 8] |   
# |Luis Perez        | 13   |Masculino |Primero   |[8, 7, 7, 9, 8] |                
# |Ana Espinosa      | 14   |Femenino  |Segundo   |[9, 9, 6, 8, 8] |        
# |Pablo Moran       | 11   |Masculino |Segundo   |[7, 8, 9, 9, 8] |


p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6

hacer_tablero



