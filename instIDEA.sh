#!/bin/bash

x="x"

menu ()
{
while true $x != "x"
do 
clear 

echo "
====================================================================
				IntelliJ IDEA

Obs: 
Executar o instIDEA.sh no local do programa baixado,
verificar se o nome do programa está como ideaIU-2021.2.2.tar.gz,
o programa será instalado na pasta programas/,
caso queira navegar até a pastá use o comando 
cd programas/. 

;)

Link para baixar o arquivo: encurtador.com.br/xCH28

Qualque dúvida pergunte pá eu,  Cosmo!
====================================================================
"


echo "Digite 1 para inicia, 2 para excluir ou x para sair. "
read x

case "$x" in
 1)
  clear
  echo "Iniciando instalação...."
  sleep 5
  
  sudo mkdir /programas
  sudo mv ideaIU-2021.2.2.tar.gz /programas/


  sudo chmod 777 /programas

  cd /programas/

  sudo tar -vzxf ideaIU-2021.2.2.tar.gz 

  sudo cat > idea.desktop << FECHA
[Desktop Entry]
Version=1.0
Encoding=UTF-8
Name=IDEA
Comment=Programa de desenvolvedor JAVA
Exec=sh /programas/idea-IU-212.5284.40/bin/idea.sh
Icon=/programas/idea-IU-212.5284.40/bin/idea.png
Terminal=false
Type=Application

FECHA


  cd /programas/
  sudo rm -R ideaIU-2021.2.2.tar.gz

  sudo chmod +x idea.desktop 
  sudo mv idea.desktop /usr/share/applications/
  
  clear
  echo "=============================================================="
  echo "Programa Instalado com sucesso!"
  echo "Procure pelo nome IDEA, botão direito do mouse"
  echo "clicar em adicione ao seus favoritos ou ir na Área de Trabalho,"
  echo " botão direito do mouse clicar Permitir Iniciar. Obrigado ;)"
  echo "=============================================================="
  sudo cp /usr/share/applications/idea.desktop /home/devdark/Área\ de\ Trabalho/
  sleep 5
  exit
  ;;
  
  2) 
  clear 
  echo "Removendo programa...
  		           :("
  clear
  sleep 2
  sudo rm -R /programas/
  sudo rm /usr/share/applications/idea.desktop

  clear
  echo "IDEA removido com sucesso, eu acho ... :)rs"
  sleep 5
  exit
  ;;
  
  $x)
  clear
  echo "Saindo ..."
  sleep 1
  echo "Até breve :)"
  
  sleep 1
  exit 
  ;;

esac
done

}
menu






