# Helm charts

The repository contains the collection of Helm charts created by the RDX Works projects to be used by the public.

## Using the repository

## Updating the index

After you've made a change on one of the helm charts (which should also include a version bump),
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
