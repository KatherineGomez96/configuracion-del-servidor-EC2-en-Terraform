# configuracion-del-servidor-EC2-en-Terraform
#se define la configuración de un servidor EC2 en Terraform con los siguientes elementos:
 
1.  provider "aws" : Se especifica el proveedor de AWS y la región donde se desplegará la instancia EC2.
2.  resource "aws_instance" : Se define el recurso de instancia EC2 con los siguientes atributos:
 
-  ami : ID de la AMI que se utilizará para la instancia.
-  instance_type : Tipo de instancia EC2 (por ejemplo, t2.micro).
-  key_name : Nombre del par de claves que se utilizará para acceder a la instancia.
-  subnet_id : ID de la subred donde se desplegará la instancia.
-  security_group : ID del grupo de seguridad que se aplicará a la instancia.
-  tags : Etiquetas para identificar la instancia (en este caso, se asigna el nombre "ExampleInstance").
3.  output "public_ip" : Se define una salida que muestra la dirección IP pública de la instancia EC2 una vez que se haya creado.
