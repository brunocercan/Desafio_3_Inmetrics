resource "aws_eks_cluster" "eks_cluster_brunocg" {
  name     = "eks_cluster_brunocg"
  role_arn = aws_iam_role.eks-cluster-brunocg-role.arn
  version = "1.20"

  vpc_config {
    subnet_ids = [aws_subnet.public_subnet_A.id, aws_subnet.public_subnet_C.id]
    security_group_ids = [ aws_security_group.sg_brunocg.id ]
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.brunocg-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.brunocg-AmazonEKSVPCResourceController,
  ]

  tags = {
    "Name" = "eks_cluster_brunocg"
  }
}

output "endpoint" {
    value = aws_eks_cluster.eks_cluster_brunocg.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.eks_cluster_brunocg.certificate_authority[0].data
}