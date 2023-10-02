# gateway-api

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for babylon-gateway-api on Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| alerts.enabled | bool | `true` | Whether or not to install the alerts using alertmanager |
| autoscaling.enabled | bool | `true` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `2` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `70` |  |
| cluster_name | string | `"babylon-gateway-cluster"` |  |
| config.ASPNETCORE_URLS | string | `nil` | The interface the dotnet service listens to. Shared with data_aggregator. Defaults to using values under global.config |
| config.gatewayapi.EnableSwagger | string | `nil` |  |
| config.gatewayapi.MaxPageSize | string | `nil` |  |
| config.gatewayapi.PreventConstructionRequestsIfDbLedgerIsBehind | string | `nil` |  |
| config.gatewayapi.PreventReadRequestsIfDbLedgerIsBehind | string | `nil` |  |
| config.logging | object | `{"LogLevel":{"Default":null,"Microsoft_Hosting_Lifetime":null}}` | Configurations for changing the logging behaviour. Defaults to using values under global.config |
| config.network | object | `{"disableCoreAPICertificates":null,"disableFallbackCertificates":null,"environment":null,"name":null,"nodes":null}` | Network specific configurations that. Shared with data_aggregator. Defaults to using values under global.config |
| config.network.disableCoreAPICertificates | string | `nil` | Whether to check the TLS certificates of the network nodes. |
| config.network.environment | string | `nil` | Alternative descriptive name of the network to be put into labels |
| config.network.name | string | `nil` | Name of the network  |
| config.network.nodes | string | `nil` | List of core nodes to connect to. Use trust_weighting to create a priority list. |
| config.postgres | object | `{"command_timeout":null,"connection_lifetime":null,"dbname":null,"existingSecret":null,"existingSecretPasswordKey":null,"existingSecretUsernameKey":null,"hostname":null,"hostnameRO":null,"max_pool_size":null,"min_pool_size":null,"port":null,"read_buffer_size":null,"write_buffer_size":null}` | Configurations to conncet the service to a database. Shared with data_aggregator. Defaults to using values under global.config |
| config.postgres.dbname | string | `nil` | Name of the database to store the babylon-ledger data in. Defaults to using values under global.config |
| config.postgres.existingSecret | string | `nil` | Name of the secret that stores the credentials to connect to postgres. Must be created before deployment. Defaults to using values under global.config |
| config.postgres.existingSecretPasswordKey | string | `nil` | Key in the secret that stores the password to connect to postgres. Must be created before deployment. Defaults to using values under global.config |
| config.postgres.existingSecretUsernameKey | string | `nil` | Key in the secret that stores the username to connect to postgres. Must be created before deployment. Defaults to using values under global.config |
| fullnameOverride | string | `""` |  |
| global.config.ASPNETCORE_URLS | string | `"http://*:8080"` | The interface the dotnet service listens to. Shared with data_aggregator. Defaults to using values under global.config |
| global.config.gatewayapi.EnableSwagger | bool | `true` |  |
| global.config.gatewayapi.MaxPageSize | string | `""` |  |
| global.config.gatewayapi.PreventConstructionRequestsIfDbLedgerIsBehind | string | `""` |  |
| global.config.gatewayapi.PreventReadRequestsIfDbLedgerIsBehind | string | `""` |  |
| global.config.logging | object | `{"LogLevel":{"Default":"Information","Microsoft_Hosting_Lifetime":"Information"}}` | Configurations for changing the logging behaviour. Defaults to using values under global.config |
| global.config.network | object | `{"disableCoreAPICertificates":true,"disableFallbackCertificates":true,"environment":"mainnet","name":"mainnet","nodes":[{"address":"https://somehost/core","enabled":true,"existingSecret":"babylon-gateway-core1-credentials","existingSecretKey":"base64-encoded-auth","name":"Core1","trust_weighting":"1"}]}` | Network specific configurations that. Shared with data_aggregator. Get overwritten by subchart specific .Values.config |
| global.config.network.disableCoreAPICertificates | bool | `true` | Whether to check the TLS certificates of the network nodes. |
| global.config.network.environment | string | `"mainnet"` | Alternative descriptive name of the network to be put into labels |
| global.config.network.name | string | `"mainnet"` | Name of the network  |
| global.config.network.nodes | list | `[{"address":"https://somehost/core","enabled":true,"existingSecret":"babylon-gateway-core1-credentials","existingSecretKey":"base64-encoded-auth","name":"Core1","trust_weighting":"1"}]` | List of core nodes to connect to. Use trust_weighting to create a priority list. |
| global.config.network.nodes[0] | object | `{"address":"https://somehost/core","enabled":true,"existingSecret":"babylon-gateway-core1-credentials","existingSecretKey":"base64-encoded-auth","name":"Core1","trust_weighting":"1"}` | Unique name of the node.  |
| global.config.network.nodes[0].address | string | `"https://somehost/core"` | URL of the core node. Must include the path /core to reach the right API endpoints |
| global.config.network.nodes[0].enabled | bool | `true` | Whether to enable this node |
| global.config.network.nodes[0].existingSecret | string | `"babylon-gateway-core1-credentials"` | Credentials to conncet to the core ndoe. The secret must be created seperately before deployment. |
| global.config.network.nodes[0].existingSecretKey | string | `"base64-encoded-auth"` | Key of secret with the base64 encoded core node credentials. |
| global.config.network.nodes[0].trust_weighting | string | `"1"` | Trust weighting for creating a priority list |
| global.config.postgres | object | `{"command_timeout":"600","connection_lifetime":"600","dbname":"radixdlt_ledger","existingSecret":"","existingSecretPasswordKey":"password","existingSecretUsernameKey":"username","hostname":"postgres-postgresql","hostnameRO":"postgres-postgresql","max_pool_size":"1000","min_pool_size":"10","port":5432,"read_buffer_size":"32768","write_buffer_size":"32768"}` | Configurations to conncet the service to a database. Shared with data_aggregator. |
| global.config.postgres.dbname | string | `"radixdlt_ledger"` | Name of the database to store the babylon-ledger data in. |
| global.config.postgres.existingSecret | string | `""` | Name of the secret that stores the credentials to connect to postgres. Must be created before deployment. |
| global.config.postgres.existingSecretPasswordKey | string | `"password"` | Key in the secret that stores the password to connect to postgres. Must be created before deployment. |
| global.config.postgres.existingSecretUsernameKey | string | `"username"` | Key in the secret that stores the username to connect to postgres. Must be created before deployment. |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"docker.io/radixdlt/babylon-ng-gateway-api"` | Image of the babylon gateway api  |
| imagePullSecrets | string | `nil` | Secrets to access the image registry with |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"2m"` |  |
| ingress.className | string | `"nginx"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts | list | `[]` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe.failureThreshold | int | `5` |  |
| livenessProbe.initialDelaySeconds | int | `30` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| metrics | object | `{"dashboard_url":"https://grafana.com","enabled":false,"port":1235,"serviceMonitor":{"enabled":true,"interval":"15s"}}` | Configurations for installing/enabling the metrics endpoints and collect them using ServiceMonitors |
| metrics.dashboard_url | string | `"https://grafana.com"` | Url to a default dashboard for the babylon-gateway to be linked in the alerts |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `15` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
| replicaCount | int | `2` |  |
| resources.limits.memory | string | `"750Mi"` |  |
| resources.requests.cpu | string | `"475m"` |  |
| resources.requests.memory | string | `"750Mi"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.add[0] | string | `"NET_ADMIN"` |  |
| securityContext.privileged | bool | `false` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | If not set and create is true, a name is generated using the fullname template |
| tolerations[0].effect | string | `"PreferNoSchedule"` |  |
| tolerations[0].key | string | `"networkGatewayInstance"` |  |
| tolerations[0].operator | string | `"Equal"` |  |
| tolerations[0].value | string | `"true"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.2](https://github.com/norwoodj/helm-docs/releases/v1.11.2)
