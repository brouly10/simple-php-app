/*
  Web Servers
*/

resource "aws_instance" "web-1" {
    ami = "ami-916f59f4"
    availability_zone = "us-east-2a"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["${aws_security_group.front.id}"]
    key_name = "AWS42_key_pair"
    subnet_id = "${aws_subnet.public.id}"
    associate_public_ip_address = true
    source_dest_check = false
/*provisioner "file" {
    source = "script.sh"
    destination = "/tmp/script.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh"
    ]
  }
 connection {
    user = "ubuntu"
    private_key = "${file("/home/ec2-user/terraformGT/vpc/AWS42_key_pair.pem")}"
  }
*/
    tags {
        Name = "TerraformFrontend"
    }
}


