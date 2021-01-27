# metallb

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![AppVersion: 0.9.4](https://img.shields.io/badge/AppVersion-0.9.4-informational?style=flat-square)

Helm chart for deploying MetalLB - Only supports Layer2 config for now

## Installation

### Add Helm repository

```shell
helm repo add drew-viles https://drewviles.github.io/helm-charts
helm repo update
```

## Install chart

Using config from a file:

```bash
helm upgrade --install metallb drew-viles/metallb --values ./values.yaml
```

## Updating the Chart
Make sure you've run and resolved any issues using the following as failures of these will cause the pipeline/actions to fail.
```
yamllint charts/metallb/values.yaml  --config-file .github/ct.yaml
helm-docs .
```

## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.repo | string | `"metallb"` | The repo to be used |
| image.tag | string | `"0.9.4"` | The version of metallb to use |
| imagePullPolicy | string | `"Always"` | Pod ImagePullPolicy |
| imagePullSecrets | object | `{}` | Pod ImagePullSecret |
| metallb.addressPools[0].addresses[0] | string | `"192.168.0.100-192.168.0.199"` |  |
| metallb.addressPools[0].name | string | `"default"` |  |
| metallb.addressPools[0].protocol | string | `"layer2"` |  |
| metallb.memberlistSecret | string | `"blRRUERiMGN4dWRrbUpDN29Fc3ZkZ2ptclJ1MmRqSXVheFY3MkNVYW1GaUp1NE13Zmx2Q1hjam1wMzVBa2VkNgp2ejBtdi9GeXA4b1RLM2Y0aURhL290TUM1ZjFUU3lNY2RyeEhwakhoWGhGNFhCQWJNMnliNEdYaENmWHRPcmg5Ck11UnN4aS9GejRiWWdUcEdjNUtvSnZFd09HYzAwNEdObExKNXdvbGt5UFU9"` | MetalLB Member List Secret - openssl rand -base64 128 |
| nameOverride | string | `"metallb"` | Enter a name to change the default deployment name |
| namespace.create | bool | `true` | The disable this if you're creating the namespace yourself |
| namespace.name | string | `"metallb-system"` | The namespace to install metallb to |