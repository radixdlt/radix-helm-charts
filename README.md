# Helm charts

The repository contains the collection of Helm charts created by the RDX Works projects to be used by the public.

## Using the repository

### Locally

```bash
$ helm repo add radixdlt 'https://raw.githubusercontent.com/radixldt/radix-helm-charts/master/'

# Run this command when you want to fetch updates from the repository.
$ helm repo update
Hang tight while we grab the latest from your chart repositories...
...Successfully got an update from the "radixdlt" chart repository
Update Complete. ⎈Happy Helming!⎈

# The repository should appear locally
$ helm repo list
NAME                    URL
radixdlt               https://raw.githubusercontent.com/radixdlt/radix-helm-charts/master/

# You can see that your chart is available now
$ helm search repo babylon-gateway
NAME                            CHART VERSION   APP VERSION     DESCRIPTION
radixdlt/babylon-gateway        1.0.0           1.0.0           ...
```

### Helmfile

```yaml
---
repositories:
  - name: radixdlt
    url: https://raw.githubusercontent.com/radixldt/radix-helm-charts/master/
```