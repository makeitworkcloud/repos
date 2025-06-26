resource "github_user_gpg_key" "gpg_key" {
  armored_public_key = data.sops_file.secret_vars.data["github_gpg_key"]
}
