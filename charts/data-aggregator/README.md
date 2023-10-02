# data-aggregator

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity.podAffinity | object | `{}` |  |
| alert_thresholds.HighTimeSinceLastLedgerCommit | int | `30` |  |
| alerts.enabled | bool | `true` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| cluster_name | string | `"rdx-works-main-dev"` |  |
| config.ASPNETCORE_URLS | string | `nil` | The interface the dotnet service listens to. Shared with gateway_api. Defaults to using values under global.config |
| config.data_aggregator.LedgerConfirmation.MaxCommitBatchSize | string | `nil` |  |
| config.data_aggregator.LedgerConfirmation.MaxTransactionPipelineSizePerNode | string | `nil` |  |
| config.data_aggregator.LedgerConfirmation.OnlyUseSufficientlySyncedUpNodesForQuorumCalculation | string | `nil` |  |
| config.data_aggregator.LedgerConfirmation.QuorumRequiresTrustProportion | string | `nil` |  |
| config.data_aggregator.LedgerConfirmation.SufficientlySyncedStateVersionThreshold | string | `nil` |  |
| config.data_aggregator.MempoolConfiguration.MinDelayBetweenMissingFromMempoolAndResubmissionSeconds | string | `nil` |  |
| config.data_aggregator.MempoolConfiguration.MinDelayBetweenResubmissionsSeconds | string | `nil` |  |
| config.data_aggregator.MempoolConfiguration.PruneCommittedAfterSeconds | string | `nil` |  |
| config.data_aggregator.MempoolConfiguration.PruneMissingTransactionsAfterTimeSinceFirstSeenSeconds | string | `nil` |  |
| config.data_aggregator.MempoolConfiguration.PruneMissingTransactionsAfterTimeSinceLastGatewaySubmissionSeconds | string | `nil` |  |
| config.data_aggregator.MempoolConfiguration.PruneRequiresMissingFromMempoolForSeconds | string | `nil` |  |
| config.data_aggregator.MempoolConfiguration.StopResubmittingAfterSeconds | string | `nil` |  |
| config.logging.LogLevel.Default | string | `nil` |  |
| config.logging.LogLevel.Microsoft_Hosting_Lifetime | string | `nil` |  |
| config.network.disableCoreAPICertificates | string | `nil` | Whether to check the TLS certificates of the network nodes. |
| config.network.disableFallbackCertificates | string | `nil` |  |
| config.network.environment | string | `nil` | Alternative descriptive name of the network to be put into labels |
| config.network.name | string | `nil` | Name of the network  |
| config.network.nodes | string | `nil` | List of core nodes to connect to. Use trust_weighting to create a priority list. |
| config.postgres.command_timeout | string | `nil` |  |
| config.postgres.connection_lifetime | string | `nil` |  |
| config.postgres.dbname | string | `nil` | Name of the database to store the babylon-ledger data in. Defaults to using values under global.config |
| config.postgres.existingSecret | string | `nil` | Name of the secret that stores the credentials to connect to postgres. Must be created before deployment. Defaults to using values under global.config |
| config.postgres.existingSecretPasswordKey | string | `nil` | Key in the secret that stores the password to connect to postgres. Must be created before deployment. Defaults to using values under global.config |
| config.postgres.existingSecretUsernameKey | string | `nil` | Key in the secret that stores the username to connect to postgres. Must be created before deployment. Defaults to using values under global.config |
| config.postgres.hostname | string | `nil` | Hostname of the postgres instance |
| config.postgres.hostnameRO | string | `nil` | Hostname of Read Only postgres instance |
| config.postgres.max_pool_size | string | `nil` |  |
| config.postgres.min_pool_size | string | `nil` |  |
| config.postgres.port | string | `nil` | Port that the postgres instance listens on |
| config.postgres.read_buffer_size | string | `nil` |  |
| config.postgres.write_buffer_size | string | `nil` |  |
| fullnameOverride | string | `""` |  |
| global.config.ASPNETCORE_URLS | string | `"http://*:8080"` | The interface the dotnet service listens to. Shared with gateway_api. Defaults to using values under global.config |
| global.config.data_aggregator.LedgerConfirmation.MaxCommitBatchSize | int | `1000` |  |
| global.config.data_aggregator.LedgerConfirmation.MaxTransactionPipelineSizePerNode | int | `3000` |  |
| global.config.data_aggregator.LedgerConfirmation.OnlyUseSufficientlySyncedUpNodesForQuorumCalculation | bool | `true` |  |
| global.config.data_aggregator.LedgerConfirmation.QuorumRequiresTrustProportion | float | `0.51` |  |
| global.config.data_aggregator.LedgerConfirmation.SufficientlySyncedStateVersionThreshold | int | `1000` |  |
| global.config.data_aggregator.MempoolConfiguration.MinDelayBetweenMissingFromMempoolAndResubmissionSeconds | int | `10` |  |
| global.config.data_aggregator.MempoolConfiguration.MinDelayBetweenResubmissionsSeconds | int | `10` |  |
| global.config.data_aggregator.MempoolConfiguration.PruneCommittedAfterSeconds | string | `"31556952"` |  |
| global.config.data_aggregator.MempoolConfiguration.PruneMissingTransactionsAfterTimeSinceFirstSeenSeconds | int | `604800` |  |
| global.config.data_aggregator.MempoolConfiguration.PruneMissingTransactionsAfterTimeSinceLastGatewaySubmissionSeconds | int | `604800` |  |
| global.config.data_aggregator.MempoolConfiguration.PruneRequiresMissingFromMempoolForSeconds | int | `60` |  |
| global.config.data_aggregator.MempoolConfiguration.StopResubmittingAfterSeconds | int | `300` |  |
| global.config.logging.LogLevel.Default | string | `"Information"` |  |
| global.config.logging.LogLevel.Microsoft_Hosting_Lifetime | string | `"Information"` |  |
| global.config.network.disableCoreAPICertificates | bool | `true` | Whether to check the TLS certificates of the network nodes. |
| global.config.network.disableFallbackCertificates | bool | `true` |  |
| global.config.network.environment | string | `"mainnet"` | Alternative descriptive name of the network to be put into labels |
| global.config.network.name | string | `"mainnet"` | Name of the network  |
| global.config.network.nodes[0].address | string | `"https://somehost/core"` | URL of the core node. Must include the path /core to reach the right API endpoints |
| global.config.network.nodes[0].enabled | bool | `true` | Whether to enable this node |
| global.config.network.nodes[0].existingSecret | string | `"babylon-gateway-core1-credentials"` | Credentials to conncet to the core ndoe. The secret must be created seperately before deployment. |
| global.config.network.nodes[0].existingSecretKey | string | `"base64-encoded-auth"` | Key of secret with the base64 encoded core node credentials. |
| global.config.network.nodes[0].name | string | `"Core1"` |  |
| global.config.network.nodes[0].trust_weighting | string | `"1"` | Trust weighting for creating a priority list |
| global.config.postgres.command_timeout | string | `"600"` |  |
| global.config.postgres.connection_lifetime | string | `"600"` |  |
| global.config.postgres.dbname | string | `"radixdlt_ledger"` | Name of the database to store the babylon-ledger data in. |
| global.config.postgres.existingSecret | string | `""` | Name of the secret that stores the credentials to connect to postgres. Must be created before deployment. |
| global.config.postgres.existingSecretPasswordKey | string | `"password"` | Key in the secret that stores the password to connect to postgres. Must be created before deployment. |
| global.config.postgres.existingSecretUsernameKey | string | `"username"` | Key in the secret that stores the username to connect to postgres. Must be created before deployment. |
| global.config.postgres.hostname | string | `"postgres-postgresql"` |  |
| global.config.postgres.hostnameRO | string | `"postgres-postgresql"` |  |
| global.config.postgres.max_pool_size | string | `"1000"` |  |
| global.config.postgres.min_pool_size | string | `"10"` |  |
| global.config.postgres.port | int | `5432` |  |
| global.config.postgres.read_buffer_size | string | `"32768"` |  |
| global.config.postgres.write_buffer_size | string | `"32768"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"docker.io/radixdlt/ng-babylon-data-aggregator"` |  |
| imagePullSecrets | string | `nil` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths | list | `[]` |  |
| ingress.tls | list | `[]` |  |
| livenessProbe.failureThreshold | int | `5` |  |
| livenessProbe.initialDelaySeconds | int | `30` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| livenessProbe.timeoutSeconds | int | `5` |  |
| metrics.dashboard_url | string | `"https://grafana.com"` |  |
| metrics.enabled | bool | `false` | Whether to install/enable the metrics endpoints and collect them using ServiceMonitors |
| metrics.port | int | `1234` |  |
| metrics.serviceMonitor.enabled | bool | `true` |  |
| metrics.serviceMonitor.interval | string | `"5s"` |  |
| migrations.enableInitContainer | bool | `false` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| readinessProbe.failureThreshold | int | `3` |  |
| readinessProbe.initialDelaySeconds | int | `10` |  |
| readinessProbe.periodSeconds | int | `15` |  |
| readinessProbe.timeoutSeconds | int | `1` |  |
| replicaCount | int | `1` |  |
| resources.limits.memory | string | `"2Gi"` |  |
| resources.requests.cpu | string | `"1000m"` |  |
| resources.requests.memory | string | `"2Gi"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.add[0] | string | `"NET_ADMIN"` |  |
| securityContext.privileged | bool | `false` |  |
| service.port | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations[0].effect | string | `"PreferNoSchedule"` |  |
| tolerations[0].key | string | `"networkGatewayInstance"` |  |
| tolerations[0].operator | string | `"Equal"` |  |
| tolerations[0].value | string | `"true"` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.2](https://github.com/norwoodj/helm-docs/releases/v1.11.2)
