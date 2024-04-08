{{- define "fleet.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "fleet.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
