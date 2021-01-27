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
| controlPlane | object | `{"addonComponents":null,"components":{},"enabled":true,"meshConfig":{}}` | Control plane config - see https://istio.io/latest/docs/reference/config/istio.operator.v1alpha1/#IstioOperatorSpec |
| controlPlane.addonComponents | string | `nil` | Addon components https://istio.io/latest/docs/reference/config/istio.operator.v1alpha1/#ExternalComponentSpec  - see values for example |
| controlPlane.components | object | `{}` | Setup the mesh config - https://istio.io/latest/docs/reference/config/istio.operator.v1alpha1/#IstioComponentSetSpec - see values for example |
| controlPlane.enabled | bool | `true` | Enable the control plane |
| controlPlane.meshConfig | object | `{}` | Setup the mesh config - https://istio.io/latest/docs/reference/config/istio.mesh.v1alpha1/ - see values for example |
| dashboards.enabled | bool | `true` | Can be set to false to disable dashboards configmaps |
| image.repo | string | `"docker.io/istio"` | The repo to be used |
| image.tag | string | `"1.7.4"` | The tag to be used |
| operator.affinity | object | `{}` | K8S Resources |
| operator.imagePullPolicy | string | `"IfNotPresent"` | The name of the operator deployment |
| operator.imagePullSecrets | object | `{}` | K8S Resources |
| operator.istioNamespace.create | bool | `true` | The whether istio should be automatically deployed |
| operator.istioNamespace.name | string | `"istio-system"` | The namespace that istio is installed to |
| operator.name | string | `"istio-operator"` | The name of the operator deployment |
| operator.nodeSelector | object | `{}` | K8S Resources |
| operator.operatorNamespace.name | string | `"istio-operator"` | The namespace that the operator will be deployed in |
| operator.podSecurityContext | object | `{}` | K8S Resources |
| operator.prometheusNamespace.name | string | `"monitoring"` | The namespace that prometheus is in |
| operator.replicas | int | `1` | How many replicas of the operator |
| operator.resources | object | `{}` | K8S Resources |
| operator.tolerations | object | `{}` | K8S Resources |
| serviceMonitors.enabled | bool | `true` | Can be set to false to disable servicemonitor configmaps |