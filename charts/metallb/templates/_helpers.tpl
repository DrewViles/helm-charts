
{{- define "metallb.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "metallb.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "metallb.selectorLabels" -}}
app: {{ include "metallb.name" . }}
app.kubernetes.io/name: {{ include "metallb.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


{{- define "metallb.labels" -}}
helm.sh/chart: {{ include "metallb.chart" . }}
{{ include "metallb.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: "Helm"
{{- end }}

{{- define "metallb.annotations" -}}
meta.helm.sh/release-name: "metallb"
meta.helm.sh/release-namespace: {{ .Values.namespace.name | quote }}
{{- end }}

