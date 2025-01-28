❯ nano whereareyou.sh
❯ sudo mv whereareyou.sh /usr/local/bin/whereareyou

[sudo] password for guerrerove: 
❯ sudo chmod +x /usr/local/bin/whereareyou

❯ whereareyou google.com
Información para la IP: google.com
  GNU nano 7.2                                              whereareyou                                                         
# Verificar si la respuesta contiene datos válidos
if echo "$response" | grep -q "\"status\":\"fail\""; then
  echo "No se pudo obtener información para la IP: $IP"
  exit 1
fi

# Extraer información relevante de la respuesta JSON
country=$(echo "$response" | grep -oP '"country":"\K[^"]+')
region=$(echo "$response" | grep -oP '"regionName":"\K[^"]+')
city=$(echo "$response" | grep -oP '"city":"\K[^"]+')
isp=$(echo "$response" | grep -oP '"isp":"\K[^"]+')

# Mostrar la información
echo "Información para la IP: $IP"
echo "País: $country"
echo "Región: $region"
echo "Ciudad: $city"
echo "Proveedor: $isp"
