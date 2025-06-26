import {
  to = github_user_ssh_key.ssh_key
  id = "125534640"
}

resource "github_user_ssh_key" "ssh_key" {
  title = "GitHub SSH Key"
  key   = data.sops_file.secret_vars.data["github_ssh_key"]
}

resource "github_user_gpg_key" "gpg_key" {
  armored_public_key = data.sops_file.secret_vars.data["github_gpg_key"]
}
