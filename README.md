# Helm charts

The repository contains the private collection of Helm charts used throughout the RDX Works projects.

## Using the repository

### Locally

Before proceeding you'll need to create a Github token with read-only access on this repository which
will be used as your password. This can be easily achieved with the fine-grained permissions
introduced by GitHub (https://github.blog/2022-10-18-introducing-fine-grained-personal-access-tokens-for-github/).

You can include the repository locally with the following:

```bash
$ export GH_USER='<your-gh-username>'
$ export GH_TOKEN='<your-gh-token>'
$ helm repo add --username $GH_USER --password $GH_TOKEN rdx-works 'https://raw.githubusercontent.com/radixldt/helm-charts/master/'

# Run this command when you want to fetch updates from the repository.
$ helm repo update
Hang tight while we grab the latest from your chart repositories...
...Successfully got an update from the "rdx-works" chart repository
Update Complete. ⎈Happy Helming!⎈

# The repository should appear locally
$ helm repo list
NAME                    URL
rdx-works               https://raw.githubusercontent.com/radixdlt/helm-charts/master/

# You can see that your chart is available now
$ helm search repo developer-access
NAME                            CHART VERSION   APP VERSION     DESCRIPTION
rdx-works/developer-access      1.0.0                           Provides developer access on the namespace thro...
```

### Helmfile

In order to use the repo with [`helmfile`](https://github.com/helmfile/helmfile) you'll have to
provide the username and password combination as environment variables.

```yaml
---
repositories:
  - name: rdx-works
    url: https://raw.githubusercontent.com/radixldt/helm-charts/master/
    username: {{ env "GH_USER" }}
    password: {{ env "GH_TOKEN" }}
```

## Updating the index

After you've make a change on one of the helm charts (which should also include a version bump),
you'll need to also update the Helm repository index which will make the change available to all the
users.

Run the following command to update the index:

```bash
make index
```

Verify that the [`index.yaml`](./index.yaml) file was updated by checking that the new version is included.

## Updating an existing chart

The process of updating a Helm chart is the following

1. Make your changes in the helm chart.

1. Bump the chart version according to [semver](https://semver.org/).

1. Generate the new package artifacts with the following command:

    ```bash
    make package
    ```

1. Update the [`index.yaml`](./index.yaml) file. See above for instructions.

1. Open a PR and wait for a review from the team. After the PR is merged you should be able to pull
   your changes.

## Adding a new chart

This is the same process as when you're updating an existing chart with the only difference that
you'll not be updating the versions of existing packages.
