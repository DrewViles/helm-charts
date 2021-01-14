
{{- define "istio-operator.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "istio-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "istio-operator.selectorLabels" -}}
app.kubernetes.io/name: {{ include "istio-operator.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


{{- define "istio-operator.labels" -}}
helm.sh/chart: {{ include "istio-operator.chart" . }}
{{ include "istio-operator.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: "Helm"
{{- end }}

{{- define "istio-operator.annotations" -}}
meta.helm.sh/release-name: "istio-operator"
meta.helm.sh/release-namespace: {{ .Values.operator.operatorNamespace.name | quote }}
{{- end }}

