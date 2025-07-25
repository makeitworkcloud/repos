resource "github_repository" "dotgithub" {
  name                 = ".github"
  description          = "Make IT Work GitHub Organization Info"
  homepage_url         = "https://github.com/makeitworkcloud/"
  has_downloads        = false
  has_issues           = false
  has_projects         = false
  has_wiki             = false
  vulnerability_alerts = true
}

resource "github_repository_topics" "dotgithub" {
  repository = github_repository.dotgithub.name
  topics     = ["github"]
  depends_on = [github_repository.dotgithub]
}

resource "github_repository" "ansible-crc" {
  name                 = "ansible-crc"
  description          = "Ansible role to deploy OpenShift Local (CRC) with a custom domain name and external API access."
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "ansible-crc" {
  repository = github_repository.ansible-crc.name
  topics     = ["ansible", "openshift", "crc", "kubernetes", "ansible-role", "openshift-local"]
  depends_on = [github_repository.ansible-crc]
}

resource "github_repository" "ansible-ksops" {
  name                 = "ansible-ksops"
  description          = "Ansible role to deploy OpenShift GitOps + KSOPS"
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "ansible-ksops" {
  repository = github_repository.ansible-ksops.name
  topics     = ["ansible", "openshift", "ksops", "gitops", "kubernetes", "ansible-role", "openshift-local"]
  depends_on = [github_repository.ansible-ksops]
}

resource "github_repository" "cflan" {
  name                 = "cflan"
  description          = "Python scripts for updating Cloudflare DNS entries via NetworkManager-dispatcher."
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "cflan" {
  repository = github_repository.cflan.name
  topics     = ["python", "cloudflare", "networkmanager", "dns", "networking"]
  depends_on = [github_repository.cflan]
}

resource "github_repository" "cluster" {
  name                 = "cluster"
  description          = "OpenShift cluster management repo"
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "cluster" {
  repository = github_repository.cluster.name
  topics     = ["terraform", "openshift", "ansible", "argocd", "kustomize", "kubernetes"]
  depends_on = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_cloudflare_auth_client_id" {
  repository      = github_repository.cluster.name
  secret_name     = "CLOUDFLARE_AUTH_CLIENT_ID"
  plaintext_value = data.sops_file.secret_vars.data["cloudflare_auth_client_id"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_cloudflare_auth_client_secret" {
  repository      = github_repository.cluster.name
  secret_name     = "CLOUDFLARE_AUTH_CLIENT_SECRET"
  plaintext_value = data.sops_file.secret_vars.data["cloudflare_auth_client_secret"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_openshift_server_url" {
  repository      = github_repository.cluster.name
  secret_name     = "OPENSHIFT_SERVER_URL"
  plaintext_value = data.sops_file.secret_vars.data["openshift_server_url"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_openshift_username" {
  repository      = github_repository.cluster.name
  secret_name     = "OPENSHIFT_USERNAME"
  plaintext_value = data.sops_file.secret_vars.data["openshift_username"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_openshift_password" {
  repository      = github_repository.cluster.name
  secret_name     = "OPENSHIFT_PASSWORD"
  plaintext_value = data.sops_file.secret_vars.data["openshift_password"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_openshift_token" {
  repository      = github_repository.cluster.name
  secret_name     = "OPENSHIFT_TOKEN"
  plaintext_value = data.sops_file.secret_vars.data["openshift_token"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_sops_age_key" {
  repository      = github_repository.cluster.name
  secret_name     = "SOPS_AGE_KEY"
  plaintext_value = data.sops_file.secret_vars.data["sops_age_key"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_ssh_private_key" {
  repository      = github_repository.cluster.name
  secret_name     = "SSH_PRIVATE_KEY"
  plaintext_value = data.sops_file.secret_vars.data["ssh_private_key"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_ssh_known_hosts" {
  repository      = github_repository.cluster.name
  secret_name     = "SSH_KNOWN_HOSTS"
  plaintext_value = data.sops_file.secret_vars.data["ssh_known_hosts"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_ssh_user" {
  repository      = github_repository.cluster.name
  secret_name     = "SSH_USER"
  plaintext_value = data.sops_file.secret_vars.data["cluster_ssh_user"]
  depends_on      = [github_repository.cluster]
}

resource "github_actions_secret" "cluster_ssh_host" {
  repository      = github_repository.cluster.name
  secret_name     = "SSH_HOST"
  plaintext_value = data.sops_file.secret_vars.data["cluster_ssh_host"]
  depends_on      = [github_repository.cluster]
}

resource "github_repository" "libvirt" {
  name                 = "libvirt"
  description          = "Terraform management of libvirt hypervisor"
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "libvirt" {
  repository = github_repository.libvirt.name
  topics     = ["libvirt", "terraform"]
  depends_on = [github_repository.libvirt]
}

resource "github_actions_secret" "libvirt_ssh_private_key" {
  repository      = github_repository.libvirt.name
  secret_name     = "SSH_PRIVATE_KEY"
  plaintext_value = data.sops_file.secret_vars.data["ssh_private_key"]
  depends_on      = [github_repository.libvirt]
}

resource "github_actions_secret" "libvirt_ssh_known_hosts" {
  repository      = github_repository.libvirt.name
  secret_name     = "SSH_KNOWN_HOSTS"
  plaintext_value = data.sops_file.secret_vars.data["ssh_known_hosts"]
  depends_on      = [github_repository.libvirt]
}

resource "github_actions_secret" "libvirt_sops_age_key" {
  repository      = github_repository.libvirt.name
  secret_name     = "SOPS_AGE_KEY"
  plaintext_value = data.sops_file.secret_vars.data["sops_age_key"]
  depends_on      = [github_repository.libvirt]
}

resource "github_repository" "onion" {
  name                 = "onion"
  description          = "Static website pushed to S3 via GitHub Actions."
  homepage_url         = "https://onion.makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "onion" {
  repository = github_repository.onion.name
  topics     = ["html", "tor", "onion", "github-actions", "s3"]
  depends_on = [github_repository.onion]
}

resource "github_actions_secret" "onion_s3_bucket" {
  repository      = github_repository.onion.name
  secret_name     = "AWS_S3_BUCKET"
  plaintext_value = data.sops_file.secret_vars.data["onion_s3_bucket"]
  depends_on      = [github_repository.onion]
}

resource "github_actions_secret" "onion_aws_region" {
  repository      = github_repository.onion.name
  secret_name     = "AWS_REGION"
  plaintext_value = data.sops_file.secret_vars.data["onion_aws_region"]
  depends_on      = [github_repository.onion]
}

resource "github_actions_secret" "onion_access_key_id" {
  repository      = github_repository.onion.name
  secret_name     = "AWS_ACCESS_KEY_ID"
  plaintext_value = data.sops_file.secret_vars.data["onion_aws_access_key_id"]
  depends_on      = [github_repository.onion]
}

resource "github_actions_secret" "onion_secret_access_key" {
  repository      = github_repository.onion.name
  secret_name     = "AWS_SECRET_ACCESS_KEY"
  plaintext_value = data.sops_file.secret_vars.data["onion_aws_secret_access_key"]
  depends_on      = [github_repository.onion]
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

resource "github_actions_secret" "cloudflare_auth_client_id" {
  repository      = github_repository.repos.name
  secret_name     = "CLOUDFLARE_AUTH_CLIENT_ID"
  plaintext_value = data.sops_file.secret_vars.data["cloudflare_auth_client_id"]
  depends_on      = [github_repository.repos]
}

resource "github_actions_secret" "cloudflare_auth_client_secret" {
  repository      = github_repository.repos.name
  secret_name     = "CLOUDFLARE_AUTH_CLIENT_SECRET"
  plaintext_value = data.sops_file.secret_vars.data["cloudflare_auth_client_secret"]
  depends_on      = [github_repository.repos]
}

resource "github_actions_secret" "openshift_server_url" {
  repository      = github_repository.repos.name
  secret_name     = "OPENSHIFT_SERVER_URL"
  plaintext_value = data.sops_file.secret_vars.data["openshift_server_url"]
  depends_on      = [github_repository.repos]
}

resource "github_actions_secret" "openshift_username" {
  repository      = github_repository.repos.name
  secret_name     = "OPENSHIFT_USERNAME"
  plaintext_value = data.sops_file.secret_vars.data["openshift_username"]
  depends_on      = [github_repository.repos]
}

resource "github_actions_secret" "openshift_password" {
  repository      = github_repository.repos.name
  secret_name     = "OPENSHIFT_PASSWORD"
  plaintext_value = data.sops_file.secret_vars.data["openshift_password"]
  depends_on      = [github_repository.repos]
}

resource "github_actions_secret" "openshift_token" {
  repository      = github_repository.repos.name
  secret_name     = "OPENSHIFT_TOKEN"
  plaintext_value = data.sops_file.secret_vars.data["openshift_token"]
  depends_on      = [github_repository.repos]
}

resource "github_actions_secret" "sops_age_key" {
  repository      = github_repository.repos.name
  secret_name     = "SOPS_AGE_KEY"
  plaintext_value = data.sops_file.secret_vars.data["sops_age_key"]
  depends_on      = [github_repository.repos]
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

resource "github_repository" "terraform-runner" {
  name                 = "terraform-runner"
  description          = "Terraform Runner for GitHub Actions."
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "terraform-runner" {
  repository = github_repository.terraform-runner.name
  topics     = ["docker", "terraform", "github-actions", "runner"]
  depends_on = [github_repository.terraform-runner]
}

resource "github_actions_secret" "terraform-runner_cloudflare_auth_client_id" {
  repository      = github_repository.terraform-runner.name
  secret_name     = "CLOUDFLARE_AUTH_CLIENT_ID"
  plaintext_value = data.sops_file.secret_vars.data["cloudflare_auth_client_id"]
  depends_on      = [github_repository.terraform-runner]
}

resource "github_actions_secret" "terraform-runner_cloudflare_auth_client_secret" {
  repository      = github_repository.terraform-runner.name
  secret_name     = "CLOUDFLARE_AUTH_CLIENT_SECRET"
  plaintext_value = data.sops_file.secret_vars.data["cloudflare_auth_client_secret"]
  depends_on      = [github_repository.terraform-runner]
}

resource "github_actions_secret" "terraform-runner_openshift_server_url" {
  repository      = github_repository.terraform-runner.name
  secret_name     = "OPENSHIFT_SERVER_URL"
  plaintext_value = data.sops_file.secret_vars.data["openshift_server_url"]
  depends_on      = [github_repository.terraform-runner]
}

resource "github_actions_secret" "terraform-runner_openshift_username" {
  repository      = github_repository.terraform-runner.name
  secret_name     = "OPENSHIFT_USERNAME"
  plaintext_value = data.sops_file.secret_vars.data["openshift_username"]
  depends_on      = [github_repository.terraform-runner]
}

resource "github_actions_secret" "terraform-runner_openshift_password" {
  repository      = github_repository.terraform-runner.name
  secret_name     = "OPENSHIFT_PASSWORD"
  plaintext_value = data.sops_file.secret_vars.data["openshift_password"]
  depends_on      = [github_repository.terraform-runner]
}

resource "github_actions_secret" "terraform-runner_openshift_token" {
  repository      = github_repository.terraform-runner.name
  secret_name     = "OPENSHIFT_TOKEN"
  plaintext_value = data.sops_file.secret_vars.data["openshift_token"]
  depends_on      = [github_repository.terraform-runner]
}

resource "github_repository" "torwww" {
  name                 = "torwww"
  description          = "Deploy web mirror on local Fedora system using Ansible."
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "torwww" {
  repository = github_repository.torwww.name
  topics     = ["ansible"]
  depends_on = [github_repository.torwww]
}

resource "github_repository" "www" {
  name                 = "www"
  description          = "Static website pushed to S3 via GitHub Actions."
  homepage_url         = "https://makeitwork.cloud"
  has_downloads        = true
  has_issues           = true
  has_projects         = true
  has_wiki             = true
  vulnerability_alerts = true
}

resource "github_repository_topics" "www" {
  repository = github_repository.www.name
  topics     = ["html", "css", "github-actions", "s3"]
  depends_on = [github_repository.www]
}

resource "github_actions_secret" "www_s3_bucket" {
  repository      = github_repository.www.name
  secret_name     = "AWS_S3_BUCKET"
  plaintext_value = data.sops_file.secret_vars.data["www_s3_bucket"]
  depends_on      = [github_repository.www]
}

resource "github_actions_secret" "www_aws_region" {
  repository      = github_repository.www.name
  secret_name     = "AWS_REGION"
  plaintext_value = data.sops_file.secret_vars.data["www_aws_region"]
  depends_on      = [github_repository.www]
}

resource "github_actions_secret" "www_access_key_id" {
  repository      = github_repository.www.name
  secret_name     = "AWS_ACCESS_KEY_ID"
  plaintext_value = data.sops_file.secret_vars.data["www_aws_access_key_id"]
  depends_on      = [github_repository.www]
}

resource "github_actions_secret" "www_secret_access_key" {
  repository      = github_repository.www.name
  secret_name     = "AWS_SECRET_ACCESS_KEY"
  plaintext_value = data.sops_file.secret_vars.data["www_aws_secret_access_key"]
  depends_on      = [github_repository.www]
}
