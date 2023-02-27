# Steps to install terraform and connect it with Azure

## ##Download terrafrom

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

## ##Download AZ cli and authenticate

https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/guides/azure_cli

https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli

This will give you the tenant_id that you need 

```
az account list -o table --all --query "[].{TenantID: tenantId, Subscription: name, Default: isDefault}"
```

When you get the tenant_id put it in providers.tenant_id to connect it with your Azure account

Make sure your account is registered to create resources. If you get an error about not being registered to a resource use this command

```az
az provider register --namespace Microsoft.<resource>

```
