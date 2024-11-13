# tf-az-module-azure-iot-central-application
Terraform Module to deploy an Azure IOT central application

Manages an IoT Central Application

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#example-usage)

```hcl
resource "azurerm_resource_group" "example" { name = "example-resource" location = "West Europe" } resource "azurerm_iotcentral_application" "example" { name = "example-iotcentral-app" resource_group_name = azurerm_resource_group.example.name location = azurerm_resource_group.example.location sub_domain = "example-iotcentral-app-subdomain" display_name = "example-iotcentral-app-display-name" sku = "ST1" template = "iotc-default@1.0.0" tags = { Foo = "Bar" } }
```

## [Argument Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#argument-reference)

The following arguments are supported:

-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#name-17) - (Required) Specifies the name of the IotHub resource. Changing this forces a new resource to be created.
    
-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#resource_group_name-9) - (Required) The name of the resource group under which the IotHub resource has to be created. Changing this forces a new resource to be created.
    
-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#location-8) - (Required) Specifies the supported Azure location where the resource has to be create. Changing this forces a new resource to be created.
    
-   [`sub_domain`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#sub_domain-4) - (Required) A `sub_domain` name. Subdomain for the IoT Central URL. Each application must have a unique subdomain.
    
-   [`display_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#display_name-9) - (Optional) A `display_name` name. Custom display name for the IoT Central application. Default is resource name.
    

-   [`identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#identity-7) - (Optional) An `identity` block as defined below.
    
-   [`public_network_access_enabled`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#public_network_access_enabled-4) - (Optional) Whether public network access is allowed for the IoT Central Application. Defaults to `true`.
    
-   [`sku`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#sku-4) - (Optional) A `sku` name. Possible values is `ST0`, `ST1`, `ST2`, Default value is `ST1`
    
-   [`template`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#template-4) - (Optional) A `template` name. IoT Central application template name. Defaults to `iotc-pnp-preview@1.0.0`. Changing this forces a new resource to be created.
    
-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#tags-7) - (Optional) A mapping of tags to assign to the resource.
    

___

The `identity` block supports the following:

-   [`type`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#type-4) - (Required) Specifies the type of Managed Service Identity that should be configured on this IoT Central Application. The only possible value is `SystemAssigned`.

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#id-18) - The ID of the IoT Central Application.
    
-   [`identity`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#identity-8) - An `identity` block as defined below.
    

___

An `identity` block exports the following:

-   [`principal_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#principal_id-4) - The Principal ID associated with this Managed Service Identity.
    
-   [`tenant_id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#tenant_id-5) - The Tenant ID associated with this Managed Service Identity.
    

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#create-14) - (Defaults to 30 minutes) Used when creating the IoT Central Application.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#update-14) - (Defaults to 30 minutes) Used when updating the IoT Central Application.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#read-16) - (Defaults to 5 minutes) Used when retrieving the IoT Central Application.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#delete-14) - (Defaults to 30 minutes) Used when deleting the IoT Central Application.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/iotcentral_organization#import)

The IoT Central Application can be imported using the `resource id`, e.g.

```shell
terraform import azurerm_iotcentral_application.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.IoTCentral/iotApps/app1
```