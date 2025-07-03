<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | n/a |
| <a name="provider_sops"></a> [sops](#provider\_sops) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_secret.ansible-crc_cloudflare_auth_client_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.ansible-crc_cloudflare_auth_client_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.ansible-crc_sops_age_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.ansible-crc_ssh_private_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.cloudflare_auth_client_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.cloudflare_auth_client_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.cluster_cloudflare_auth_client_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.cluster_cloudflare_auth_client_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.cluster_openshift_password](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.cluster_openshift_server_url](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.cluster_openshift_token](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.cluster_openshift_username](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.libvirt_sops_age_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.libvirt_ssh_known_hosts](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.libvirt_ssh_private_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.onion_access_key_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.onion_aws_region](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.onion_s3_bucket](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.onion_secret_access_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.openshift_password](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.openshift_server_url](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.openshift_token](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.openshift_username](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.sops_age_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.terraform-runner_cloudflare_auth_client_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.terraform-runner_cloudflare_auth_client_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.terraform-runner_openshift_password](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.terraform-runner_openshift_server_url](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.terraform-runner_openshift_token](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.terraform-runner_openshift_username](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.www_access_key_id](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.www_aws_region](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.www_s3_bucket](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.www_secret_access_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_membership.admin](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_repository.ansible-crc](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.cflan](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.cluster](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.dotgithub](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.libvirt](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.onion](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.repos](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.shelldefaults](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.terraform-runner](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.torwww](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.www](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_topics.ansible-crc](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.cflan](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.cluster](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.dotgithub](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.libvirt](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.onion](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.repos](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.shelldefaults](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.terraform-runner](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.torwww](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.www](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_user_gpg_key.gpg_key](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/user_gpg_key) | resource |
| [sops_file.secret_vars](https://registry.terraform.io/providers/carlpett/sops/latest/docs/data-sources/file) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->