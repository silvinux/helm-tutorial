{{ define "library-chart.service" }}
apiVersion: v1
kind: Service
metadata:
  name: {{ include "library-chart.fullname" . }}
  namespace: {{ .Values.namespace.name }}
  labels:
    app: nginx
    {{- include "library-chart.labels" . | nindent 4 }}
spec:
  type: {{ .Values.service.type }}
  ports:
    - protocol: {{ .Values.service.protocol | default "TCP" }}
      port: {{ .Values.service.port }}
      targetPort: {{ .Values.service.targetPort }}
      name: http
  selector:
    {{- include "library-chart.selectorLabels" . | nindent 4 }}
{{- end }}