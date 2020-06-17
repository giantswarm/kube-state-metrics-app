// +build k8srequired

package templates

// KubeStateMetricsValues values used for kube-state-metrics-app in integration test.
const KubeStateMetricsValues = `e2e: true
Installation:
  V1:
    Guest:
      IPAM:
        NetworkCIDR: "100.64.0.0/10"
`
