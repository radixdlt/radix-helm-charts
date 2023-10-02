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
| config.ASPNETCORE_URLS | string | `"http://*:8080"` |  |
| config.data_aggregator.LedgerConfirmation.MaxCommitBatchSize | int | `1000` |  |
| config.data_aggregator.LedgerConfirmation.MaxTransactionPipelineSizePerNode | int | `3000` |  |
| config.data_aggregator.LedgerConfirmation.OnlyUseSufficientlySyncedUpNodesForQuorumCalculation | bool | `true` |  |
| config.data_aggregator.LedgerConfirmation.QuorumRequiresTrustProportion | float | `0.51` |  |
| config.data_aggregator.LedgerConfirmation.SufficientlySyncedStateVersionThreshold | int | `1000` |  |
| config.data_aggregator.MempoolConfiguration.MinDelayBetweenMissingFromMempoolAndResubmissionSeconds | int | `10` |  |
| config.data_aggregator.MempoolConfiguration.MinDelayBetweenResubmissionsSeconds | int | `10` |  |
| config.data_aggregator.MempoolConfiguration.PruneCommittedAfterSeconds | string | `"31556952"` |  |
| config.data_aggregator.MempoolConfiguration.PruneMissingTransactionsAfterTimeSinceFirstSeenSeconds | int | `604800` |  |
| config.data_aggregator.MempoolConfiguration.PruneMissingTransactionsAfterTimeSinceLastGatewaySubmissionSeconds | int | `604800` |  |
| config.data_aggregator.MempoolConfiguration.PruneRequiresMissingFromMempoolForSeconds | int | `60` |  |
| config.data_aggregator.MempoolConfiguration.StopResubmittingAfterSeconds | int | `300` |  |
| config.logging.LogLevel.Default | string | `"Information"` |  |
| config.logging.LogLevel.Microsoft_Hosting_Lifetime | string | `"Information"` |  |
| config.postgres.command_timeout | string | `"600"` |  |
| config.postgres.connection_lifetime | string | `"600"` |  |
| config.postgres.dbname | string | `"radixdlt_ledger"` |  |
| config.postgres.existingSecret | string | `""` |  |
| config.postgres.existingSecretPasswordKey | string | `"password"` |  |
| config.postgres.existingSecretUsernameKey | string | `"username"` |  |
| config.postgres.hostname | string | `"postgres-postgresql"` |  |
| config.postgres.hostnameRO | string | `"postgres-postgresql"` |  |
| config.postgres.max_pool_size | string | `"1000"` |  |
| config.postgres.min_pool_size | string | `"10"` |  |
| config.postgres.network.disableCoreAPICertificates | bool | `true` |  |
| config.postgres.network.disableFallbackCertificates | bool | `true` |  |
| config.postgres.network.environment | string | `"mainnet"` |  |
| config.postgres.network.name | string | `"mainnet"` |  |
| config.postgres.network.nodes[0].address | string | `"https://somehost/core"` |  |
| config.postgres.network.nodes[0].enabled | bool | `true` |  |
| config.postgres.network.nodes[0].existingSecret | string | `"babylon-gateway-core1-credentials"` |  |
| config.postgres.network.nodes[0].name | string | `"Core1"` |  |
| config.postgres.network.nodes[0].trust_weighting | string | `"1"` |  |
| config.postgres.port | int | `5432` |  |
| config.postgres.read_buffer_size | string | `"32768"` |  |
| config.postgres.write_buffer_size | string | `"32768"` |  |
| fullnameOverride | string | `""` |  |
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
| metrics.enabled | bool | `false` |  |
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
