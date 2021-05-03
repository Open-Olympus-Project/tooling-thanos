{{/*
Create a default name for service account if not provided.
*/}}
{{- define "thanos.querytls.serviceaccount" -}}
{{- if .Values.querytls.rbac.enabled -}}
{{- default (include "thanos.componentname" (list $ "query")) .Values.querytls.serviceAccount -}}
{{- else -}}
{{- printf "%s" .Values.querytls.serviceAccount -}}
{{- end -}}
{{- end -}}