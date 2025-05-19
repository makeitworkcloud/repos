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
| [github_repository.ansible-crc](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.cluster](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.repos](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.shelldefaults](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_topics.ansible-crc](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.cluster](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.repos](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [github_repository_topics.shelldefaults](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_topics) | resource |
| [sops_file.secret_vars](https://registry.terraform.io/providers/carlpett/sops/latest/docs/data-sources/file) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->