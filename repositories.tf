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
