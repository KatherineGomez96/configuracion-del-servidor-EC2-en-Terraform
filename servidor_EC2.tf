provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" // ID de la AMI a utilizar
  instance_type = "t2.micro" // Tipo de instancia EC2
  key_name      = "my-key-pair" // Nombre del par de claves para acceder a la instancia
  subnet_id     = "subnet-12345678" // ID de la subred donde se desplegará la instancia
  security_group = ["sg-12345678"] // ID del grupo de seguridad para la instancia

  tags = {
    Name = "ExampleInstance"
  }
}

output "public_ip" {
  value = aws_instance.example.public_ip
}
