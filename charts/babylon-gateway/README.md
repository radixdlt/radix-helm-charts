# babylon-gateway

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v1.0.0](https://img.shields.io/badge/AppVersion-v1.0.0-informational?style=flat-square)

A Helm chart for deploying the babylon-gateway on Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | 13.0.0 |
| https://raw.githubusercontent.com/radixdlt/radix-helm-charts/main/index.yaml | data-aggregator | 1.0.0 |
| https://raw.githubusercontent.com/radixdlt/radix-helm-charts/main/index.yaml | gateway-api | 1.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| data-aggregator.alerts.enabled | bool | `false` |  |
| data-aggregator.autoscaling.enabled | bool | `false` |  |
| data-aggregator.config.migrations.enabled | bool | `true` | Enable the database migration as an init container |
| data-aggregator.enabled | bool | `true` | Enable or disable the deployment of the data-aggregator |
| data-aggregator.ingress.enabled | bool | `false` |  |
| data-aggregator.metrics.enabled | bool | `false` |  |
| data-aggregator.replicaCount | int | `1` | Set the number of replicas for the data-aggregator |
| gateway-api.alerts.enabled | bool | `false` |  |
| gateway-api.autoscaling.enabled | bool | `false` |  |
| gateway-api.enabled | bool | `true` | Enable or disable the deployment of the gateway-api |
| gateway-api.ingress.enabled | bool | `false` |  |
| gateway-api.metrics.enabled | bool | `false` |  |
| gateway-api.replicaCount | int | `1` | Set the number of replicas for the gateway-api |
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
| global.config.gatewayapi.EnableSwagger | bool | `true` | Whether to enable swagger or not |
| global.config.gatewayapi.MaxPageSize | string | `""` |  |
| global.config.gatewayapi.PreventConstructionRequestsIfDbLedgerIsBehind | bool | `false` | Configure behaviour of the gatewayapi depending on Ledger lag |
| global.config.gatewayapi.PreventReadRequestsIfDbLedgerIsBehind | bool | `false` | Configure behaviour of the gatewayapi depending on Ledger lag |
| global.config.logging.LogLevel.Default | string | `"Information"` |  |
| global.config.logging.LogLevel.Microsoft_Hosting_Lifetime | string | `"Information"` |  |
| global.config.network.disableCoreAPICertificates | bool | `true` |  |
| global.config.network.disableFallbackCertificates | bool | `true` |  |
| global.config.network.environment | string | `"mainnet"` |  |
| global.config.network.name | string | `"mainnet"` | Name of the network to connect to |
| global.config.network.nodes[0].address | string | `"https://somehost/core"` | URL of the core node both gateway-api and data-aggregator are connecting to |
| global.config.network.nodes[0].enabled | bool | `true` |  |
| global.config.network.nodes[0].existingSecret | string | `"babylon-gateway-core1-credentials"` | The already existing secret containing the core ndoe credentials for the babylon-gateway applications |
| global.config.network.nodes[0].existingSecretKey | string | `"base64-encoded-auth"` | The key in the secret conaining a base64 encoded credential set. |
| global.config.network.nodes[0].name | string | `"Core1"` |  |
| global.config.network.nodes[0].trustWeighting | string | `"1"` |  |
| global.config.postgres.command_timeout | string | `"600"` |  |
| global.config.postgres.connection_lifetime | string | `"600"` |  |
| global.config.postgres.dbname | string | `"radixdlt_ledger"` | The name of database to store the babylon-ledger in. |
| global.config.postgres.existingSecret | string | `"babylon-gateway-postgres-credentials"` | The already existing secret containing the postgres credentials for the babylon-gateway applications |
| global.config.postgres.existingSecretPasswordKey | string | `"password"` | The key in the secret containing the password |
| global.config.postgres.existingSecretUsernameKey | string | `"username"` | The key in the secret containing the username |
| global.config.postgres.hostname | string | `"postgresql"` | The name of database to connect to. Set this to your postgres service name if you deploy postgres with the same chart |
| global.config.postgres.hostnameRO | string | `"postgresql"` |  |
| global.config.postgres.max_pool_size | string | `"1000"` |  |
| global.config.postgres.min_pool_size | string | `"10"` |  |
| global.config.postgres.port | int | `5432` | The port of database to connect to. |
| global.config.postgres.read_buffer_size | string | `"32768"` |  |
| global.config.postgres.write_buffer_size | string | `"32768"` |  |
| postgresql.auth.database | string | `"radixdlt_ledger"` | The name of database to store the babylon-ledger in |
| postgresql.auth.existingSecret | string | `"babylon-gateway-postgres-credentials"` | The name of the preexisting kubernetes secret containing the credentials for the postgres user |
| postgresql.auth.secretKeys.adminPasswordKey | string | `"postgres-password"` | The key in the secret that holds the admin users password |
| postgresql.auth.secretKeys.replicationPasswordKey | string | `"replication-password"` | The key in the secret that holds the replicaton users password |
| postgresql.auth.secretKeys.userPasswordKey | string | `"password"` | The key in the secret that holds the default users password |
| postgresql.auth.username | string | `"postgres"` | The name of the postgres user |
| postgresql.enabled | bool | `false` | Enable or disable the deployment of the postgresql database. See the postgres chart for more information. |
| postgresql.persistence.enabled | bool | `false` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.2](https://github.com/norwoodj/helm-docs/releases/v1.11.2)
