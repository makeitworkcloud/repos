output "numeric_ssh_id" {
  value       = github_user_ssh_key.ssh_key.id
  description = "SSH key numeric ID"
}
