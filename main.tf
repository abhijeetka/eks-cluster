locals {

  tags = {
    name = var.cluster_name
    environment = var.environment
    team = var.team
  }
  name = "${var.cluster_name}-${var.environment}"
}


resource "aws_eks_cluster" "eks_cluster" {
  name = local.name
  role_arn = aws_iam_role.eks_cluster_role.arn
  vpc_config {
    subnet_ids = [aws_subnet.eks_private_subnet_1.id,aws_subnet.eks_private_subnet_2.id]
  }
}

resource "aws_eks_node_group" "eks_cluster_ng_1" {
  depends_on = [aws_eks_cluster.eks_cluster]
  cluster_name = local.name
  node_group_name = "${local.name}-node-group"
  node_role_arn = aws_iam_role.eks_node_role.arn
  subnet_ids =  [aws_subnet.eks_private_subnet_1.id,aws_subnet.eks_private_subnet_2.id]
  instance_types = ["t2.medium"]
  scaling_config {
    desired_size = 1
    max_size = 1
    min_size = 1
  }
}
