resource "aws_eip" "eip" {
  count = var.create_eip ? 1 : 0
  address  = var.eip_address != "" ? var.eip_address : null
  vpc = var.vpc

  tags = merge(
    var.tags
  )
}

resource "aws_eip_association" "eip_assoc" {
  count = var.create_eip_association ? 1 : 0
  instance_id   = var.ec2_instance_id
  allocation_id = aws_eip.eip[count.index].id
  depends_on = [aws_eip.eip]
}