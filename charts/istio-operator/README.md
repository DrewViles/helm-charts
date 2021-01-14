# Istio-Operator

![Version: 1.7.4](https://istio.io/v1.7/docs/setup/install/operator/)

**Homepage:** <https://istio.io/>

## Installation

### Add Helm repository

```shell
helm repo add drew-viles https://charts.deetothevee.co.uk/helm-charts
helm repo update
```

## Install chart

Using config from a file:

```bash
helm upgrade --install istio . --values ./values.yaml
```
## Configuration

The following table lists the configurable parameters of the chart and the default values.

## Values
