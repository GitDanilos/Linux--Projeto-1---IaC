#! /bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP-ADM
groupadd GRP-VEN
groupadd GRP-SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP-ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP-ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP-ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP-VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP-VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP-VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP-SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP-SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP-SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP-ADM /adm
chown root:GRP-VEN /ven
chown root:GRP-SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
