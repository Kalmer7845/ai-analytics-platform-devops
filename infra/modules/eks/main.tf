module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  cluster_name    = "ai-analytics"
  cluster_version = "1.29"

  enable_irsa = true

  eks_managed_node_groups = {
    default = {
      min_size = 2
      max_size = 5
      instance_types = ["m6i.large"]
    }
  }
}