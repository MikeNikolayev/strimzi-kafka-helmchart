{{- define "kafka.topicResourceName" -}}
{{- $name := . | lower }}
{{- $name = regexReplaceAll "[^a-z0-9\\-.]" $name "-" }}
{{- if gt (len $name) 253 }}
{{- $name = trunc 253 $name }}
{{- end }}
{{- $name }}
{{- end }}

