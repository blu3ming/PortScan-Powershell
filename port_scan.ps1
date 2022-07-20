$host_destino = "localhost"
$initial_port = 130
$final_port = 140
$contador = 0

for ($port = $initial_port; $port -le $final_port; $port++){
    $conexion = Test-NetConnection $host_destino -p $port
    if (($conexion.PingSucceeded -Match 'True') -or ($conexion.TCPTestSucceeded -Match 'True')){
        echo "Puerto $port abierto"
        $contador ++
    }
}

echo "Hay en total $contador puertos abiertos"
