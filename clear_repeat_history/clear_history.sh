#!/bin/bash

#Variable del archivo .bash_history
file="/home/$USER/.bash_history"
#Variable para realizar un backup de .bash_history
back="/home/$USER/.bash_history_back"
#Variable para realizar un archivo temporal
temp="/home/$USER/.bash_history_aux"


# Verificar si el archivo existe y no está vacío, si existe hago el backup
if [ ! -s "$file" ]; then
    echo "El archivo no existe o está vacío."
    exit 1
else
	cp $file $back
fi

# Inicializar el arreglo 'únicos'
declare -a unicos

# Recorrer el archivo .bash_history línea por línea
while read linea; do
    repetido=false
    # Verificar si la línea coincide con otra en el archivo
    grep -q "^$linea$" "$file"
    if [ $? -eq 0 ]; then
        # Verificar si la línea ya está en el arreglo 'únicos'
        for i in "${unicos[@]}"; do
            if [ "$i" == "$linea" ]; then
                repetido=true
                break
            fi
        done
        # Almacenar la línea en el arreglo 'únicos' si no está repetida
        if [ $repetido == false ]; then
            unicos+=("$linea")
        fi
    fi
done < "$file"

# Redirecciono cada linea al archivo temporal 
for i in "${unicos[@]}"; do
    echo "$i" >> $temp
done

# Remplazo el archivo temporal por el archivo .bash_history
mv $temp $file


