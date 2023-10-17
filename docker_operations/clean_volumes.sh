#!/bin/bash

# Limpiar volúmenes no utilizados
docker volume prune -f

# Limpiar cache
docker system prune -a --volumes -f
