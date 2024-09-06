# Subnets Creation
resource "aws_subnet" "subnet1-public" {
    vpc_id = "${aws_vpc.tf_vpc.id}"
    cidr_block = "${var.public_subnet1_cidr}"
    availability_zone = "us-east-1a"

    tags = {
        Name = "${var.public_subnet1_name}"
    }
}

# resource "aws_subnet" "subnet2-public" {
#     vpc_id = "${aws_vpc.tf_vpc.id}"
#     cidr_block = "${var.public_subnet2_cidr}"
#     availability_zone = "us-east-1b"

#     tags = {
#         Name = "${var.public_subnet2_name}"
#     }
# }

# resource "aws_subnet" "subnet3-public" {
#     vpc_id = "${aws_vpc.tf_vpc.id}"
#     cidr_block = "${var.public_subnet3_cidr}"
#     availability_zone = "us-east-1c"

#     tags = {
#         Name = "${var.public_subnet3_name}"
#     }
	
# }

# resource "aws_subnet" "subnet4-public" {
#     vpc_id = "${aws_vpc.tf_vpc.id}"
#     cidr_block = "${var.private_subnet_cidr}"
#     availability_zone = "us-east-1d"

#     tags = {
#         Name = "${var.private_subnet_name}"
#     }

# }

