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
radixdlt/babylon-gateway        1.0.0           v1.0.0           ...
```

### Installation of charts

Make sure to execute ```helm dep up``` to download the latest sub charts. 
#### Latest appVersion
Please be aware that this chart will not be updated on every release of the babylon-gateway if no changes in deployment structure have occured. The appVersion will therefor very likely be outdated. Set the appVersion or image tag to the latest version. You can find the `appVersion` in the corresponding `Chart.yaml` and the image tag in the `values.yaml`. Only one needs to be set. You can find the latest version of the babylon-gateway [here](https://github.com/radixdlt/babylon-gateway/releases).


### Creating mandatory secrets before deployment
```
kubectl create secret generic  babylon-gateway-postgres-credentials --from-literal=u
sername=postgres --from-literal=password=postgres

kubectl create secret generic  babylon-gateway-core1-credentials --from-literal=base64-encoded-auth=klFVKSUYFSD
```

### Helmfile

```yaml
---
repositories:
  - name: radixdlt
    url: https://raw.githubusercontent.com/radixldt/radix-helm-charts/master/
```