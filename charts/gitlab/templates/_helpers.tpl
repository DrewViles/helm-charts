
{{- define "gitlab.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "gitlab.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "gitlab.selectorLabels" -}}
app: {{ include "gitlab.name" . }}
app.kubernetes.io/name: {{ include "gitlab.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}


{{- define "gitlab.labels" -}}
helm.sh/chart: {{ include "gitlab.chart" . }}
{{ include "gitlab.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: "Helm"
{{- end }}

{{- define "gitlab.annotations" -}}
meta.helm.sh/release-name: "gitlab"
meta.helm.sh/release-namespace: {{ .Values.namespace.name | quote }}
{{- end }}

