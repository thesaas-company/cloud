{{- define "thesaas-company.labels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
{{- end -}}

{{- define "thesaas-company.fullname" -}}
{{- if .Values.nameOverride -}}
{{ .Values.nameOverride }}
{{- else -}}
{{- if .Values.fullnameOverride -}}
{{ .Values.fullnameOverride }}
{{- else -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "thesaas-company.serviceAccountName" -}}
{{- if .Values.serviceAccount.name -}}
{{ .Values.serviceAccount.name }}
{{- else -}}
{{- if .Values.serviceAccount.create -}}
{{ include "thesaas-company.fullname" . }}
{{- else -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "thesaas-company.selectorLabels" -}}
{{- include "thesaas-company.labels" . | nindent 4 }}
{{- end -}}
