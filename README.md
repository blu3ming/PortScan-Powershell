# PortScan - Powershell
Escáner de puertos abiertos basado en el challenge final de la room [Hacking with Powershell](https://tryhackme.com/room/powershell) de TryHackMe. Este nos solicita un escaner de puertos en el localhost que incluya un rango de búsqueda y devuelva aquellos que se encuentren abiertos (más no necesariamente a la escucha).

Esto se hace mediante el comando **Test-NetConnection**, empleando los parámetros **PingSucceeded** y **TCPTestSucceeded**. Si alguno de estos devuelve True, entonces el puerto se encuentra abierto. Se pueden presentar dos escenarios:

  - Si **PingSucceeded** indica True: El puerto está abierto, pero es inalcanzable.
  - Si **TCPTestSucceeded** indica True: El puerto está abierto y es accesible.
  
En cualquiera de los dos escenarios, se considera abierto al puerto; aunque si estamos en busca de servicios corriendo, el **TCPTestSucceeded** debería ser un mejor indicativo de este.
