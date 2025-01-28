                                            
# Verificar si la respuesta contiene datos válidos | Verifyng if the answer have valid data
if echo "$response" | grep -q "\"status\":\"fail\""; then
  echo "No se pudo obtener información para la IP: $IP"
  exit 1
fi

# Extraer información relevante de la respuesta JSON | extract relevant information about JSON answer
country=$(echo "$response" | grep -oP '"country":"\K[^"]+')
region=$(echo "$response" | grep -oP '"regionName":"\K[^"]+')
city=$(echo "$response" | grep -oP '"city":"\K[^"]+')
isp=$(echo "$response" | grep -oP '"isp":"\K[^"]+')

# Mostrar la información | show the info
echo "Información para la IP: $IP"
echo "País: $country"
echo "Región: $region"
echo "Ciudad: $city"
echo "Proveedor: $isp"
