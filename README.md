# Helm Charts

A collection of helm charts for things that currently don't exist.
(So far that's one chart, and it's for the Istio-Operator)

## How-To

Change what you need to within the chart you're working on.

Then run:
`helm package istio-operator/ -d packages/`

The new tar.gz will appear in the `packages/` directory.

Now update the index file for the new package:
`helm repo index ./ --url https://github.com/DrewViles/helm-charts/releases/download/`

### Caveat - To be fixed asap
Because this repo is hosted on GithubPages, we need to make one small change to the output file `-urls`:

Do a find and replace of the following replacing the variable `SEM_VERSION` with your new version increase.
`https://github.com/DrewViles/helm-charts/releases/download/packages/`
to
`https://github.com/DrewViles/helm-charts/releases/download/1.7.4.SEM_VERSION/`

Essentially replacing the "packages" with the version of the chart.

Once done it should look something like:

```
urls:
    - https://github.com/DrewViles/helm-charts/releases/download/1.7.4.1/istio-operator-1.7.4.1.tgz
```

## Pull Request
Once completed, create a PR and await approval.

## Mint a release

Now you can mint a new release.

Set the release and tag to the **ChartVersion** (EG 1.7.4-release2) and then upload the tar.gz package for your release.

You're done - go eat some cake.