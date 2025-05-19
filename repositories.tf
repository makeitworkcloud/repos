resource "github_repository" "ansible-crc" {
  name                 = "ansible-crc"
  description          = "Ansible role to deploy OpenShift Local (CRC) with a domain name and network access."
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "ansible-crc" {
  repository = github_repository.ansible-crc.name
  topics     = ["ansible", "openshift", "crc", "kubernetes", "ansible-playbook", "ansible-role", "openshift-local"]
  depends_on = [github_repository.ansible-crc]
}

resource "github_repository" "cluster" {
  name                 = "cluster"
  description          = "Terraform & Argo CD management of OpenShift cluster."
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "cluster" {
  repository = github_repository.cluster.name
  topics     = ["terraform", "openshift", "argocd", "kustomize", "kubernetes"]
  depends_on = [github_repository.cluster]
}

resource "github_repository" "repos" {
  name                 = "repos"
  description          = "Terraform management of GitHub repositories."
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "repos" {
  repository = github_repository.repos.name
  topics     = ["terraform", "github", "github-actions"]
  depends_on = [github_repository.repos]
}

resource "github_repository" "shelldefaults" {
  name                 = "shelldefaults"
  description          = "Setup shell defaults"
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "shelldefaults" {
  repository = github_repository.shelldefaults.name
  topics     = ["shell", "bash", "python", "bashrc"]
  depends_on = [github_repository.shelldefaults]
}
