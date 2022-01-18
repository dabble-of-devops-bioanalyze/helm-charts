# shinyproxy

![Version: 0.4.7](https://img.shields.io/badge/Version-0.4.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.5.0](https://img.shields.io/badge/AppVersion-2.5.0-informational?style=flat-square)

A Helm chart to install Shinyproxy

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| appPod.resources.limits | object | `{"cpu":"300m","memory":"200Mi"}` | Resources limits for spawned pods |
| appPod.resources.requests | object | `{"cpu":"200m","memory":"100Mi"}` | Resources requests for spawned pods |
| ingress.annotations | object | `{}` | Annotations to add to the ingress |
| ingress.classname | string | `nil` | IngressClass that should be used |
| ingress.enabled | bool | `false` | Whether to expose via ingress controller |
| ingress.hosts | list | `[]` | The hostname that should be exposed |
| ingress.path | string | `""` | Set path in the ingress. Defaults to proxy.landing-page if blank. |
| ingress.tls | list | `[]` | TLS configuration |
| proxy | object | Default values | See https://www.shinyproxy.io/configuration/ for application configuration |
| proxy.annotations | object | `{}` | ShinyProxy deployment annotations |
| proxy.image | object | `{"name":"remche/shinyproxy","tag":"2.5.0"}` | ShinyProxy Docker image to use |
| proxy.labels | object | `{}` | ShinyProxy deployment labels |
| proxy.livenessProbe | object | `{}` | ShinyProxy deployment liveness probe |
| proxy.nodeSelector | object | `{}` | ShinyProxy deployment node selector |
| proxy.readinessProbe | object | `{}` | ShinyProxy deployment readiness probe |
| proxy.resources.limits | object | `{"cpu":"300m","memory":"800Mi"}` | ShinyProxy pod resources limits |
| proxy.resources.requests | object | `{"cpu":"200m","memory":"512Mi"}` | ShinyProxy pod resources requests |
| proxy.service | object | `{"annotations":{},"loadBalancerIP":null,"ports":{"nodePort":null},"type":"ClusterIP"}` | ShinyProxy service configuration |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)