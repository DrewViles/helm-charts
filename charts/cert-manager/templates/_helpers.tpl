
{{- define "cert-manager.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "cert-manager.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "cert-manager.selectorLabels" -}}
app: {{ include "cert-manager.name" . }}
app.kubernetes.io/name: {{ include "cert-manager.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


{{- define "cert-manager.labels" -}}
helm.sh/chart: {{ include "cert-manager.chart" . }}
{{ include "cert-manager.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: "Helm"
{{- end }}

{{- define "cert-manager.annotations" -}}
meta.helm.sh/release-name: "cert-manager"
meta.helm.sh/release-namespace: {{ .Values.namespace.name | quote }}
{{- end }}

