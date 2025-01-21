#!/bin/bash

# Creador: Pedro Reina
# Fecha Creacion: 21-01-2025

# Crea un archivo cuyo nombre se pasa por parametro y le añade un header

if [ $# -lt 1 ]
    then
        echo "Error: Porfavor introduce un archivo"
        exit 1
    fi

# Cambiar dependiendo del alumno
alumno="nombre_alumno"


echo "Creando archivo y añadiendo el header a $1"

# añade el contenido al archivo
echo '#!/bin/bash' > $1
echo "" >> $1
echo "# Alumno: $alumno" >> $1
echo "# Fecha Creacion: $(date)" >> $1

read -p "Introduce una breve descripcion del programa: " Descripcion

echo "# Descripcion: $Descripcion" >> $1
