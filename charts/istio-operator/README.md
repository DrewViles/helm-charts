# istio-operator

![Version: 1.7.4](https://img.shields.io/badge/Version-1.7.4-informational?style=flat-square) ![AppVersion: 1.7.4](https://img.shields.io/badge/AppVersion-1.7.4-informational?style=flat-square)

Helm chart for deploying Istio operator

## Installation

### Add Helm repository

```shell
helm repo add drew-viles https://drewviles.github.io/helm-charts
helm repo update
```

## Install chart

Using config from a file:

```bash
helm upgrade --install istio . --values ./values.yaml
```

## Updating the Chart
Make sure you've run and resolved any issues using the following as failures of these will cause the pipeline/actions to fail.
```
yamllint charts/istio-operator/values.yaml  --config-file .github/ct.yaml

helm-docs .
```

## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| controlPlane.addonComponents.grafana.enabled | bool | `false` |  |
| controlPlane.components.egressGateways[0].enabled | bool | `true` |  |
| controlPlane.components.egressGateways[0].name | string | `"istio-egressgateway"` |  |
| controlPlane.components.egressGateways[0].namespace | string | `"istio-system"` |  |
| controlPlane.components.ingressGateways[0].enabled | bool | `true` |  |
| controlPlane.components.ingressGateways[0].name | string | `"istio-ingressgateway"` |  |
| controlPlane.components.ingressGateways[0].namespace | string | `"istio-system"` |  |
| controlPlane.enabled | bool | `true` |  |
| controlPlane.meshConfig.accessLogFile | string | `"/dev/stdout"` |  |
| controlPlane.meshConfig.defaultConfig.zipkin.address | string | `"PATH_TO_JAEGER"` |  |
| controlPlane.meshConfig.enableAutoMtls | bool | `true` |  |
| controlPlane.meshConfig.enablePrometheusMerge | bool | `true` |  |
| controlPlane.meshConfig.enableTracing | bool | `true` |  |
| controlPlane.meshConfig.outboundTrafficPolicy.mode | string | `"ALLOW_ANY"` |  |
| controlPlane.meshConfig.rootNamespace | string | `"istio-system"` |  |
| image.repo | string | `"docker.io/istio"` |  |
| image.tag | string | `"1.7.4"` |  |
| operator.affinity | object | `{}` |  |
| operator.imagePullPolicy | string | `"IfNotPresent"` |  |
| operator.imagePullSecrets | object | `{}` |  |
| operator.istioNamespace.create | bool | `true` |  |
| operator.istioNamespace.name | string | `"istio-system"` |  |
| operator.name | string | `"istio-operator"` |  |
| operator.nodeSelector | object | `{}` |  |
| operator.operatorNamespace.name | string | `"istio-operator"` |  |
| operator.podSecurityContext | object | `{}` |  |
| operator.prometheusNamespace.name | string | `"monitoring"` |  |
| operator.replicas | int | `1` |  |
| operator.resources.limits.cpu | string | `"200m"` |  |
| operator.resources.limits.memory | string | `"256Mi"` |  |
| operator.resources.requests.cpu | string | `"50m"` |  |
| operator.resources.requests.memory | string | `"128Mi"` |  |
| operator.tolerations | object | `{}` |  |
| serviceMonitors.enabled | bool | `true` |  |
| serviceMonitors.labels | object | `{}` |  |
|dashboards.enabled | bool | `true` |"Grafana Dashboard load"  |
