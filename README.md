# Kube State Metrics App

[![CircleCI](https://circleci.com/gh/giantswarm/kube-state-metrics-app.svg?style=shield)](https://circleci.com/gh/giantswarm/kube-state-metrics-app)

Giant Swarm offers kube-state-metrics as a [managed app](https://docs.giantswarm.io/changes/managed-apps/) which is installed by default in all the clusters managed by Giant Swarm.

**Table of Contents:**

- [Install](#install)
- [Upgrading](#upgrading)
- [Configuration](#configuration)
- [Limitations](#limitations)
- [Credit](#credits)

## Install

There are several ways to install this app onto a workload cluster.

- [Using GitOps to instantiate the App](https://docs.giantswarm.io/advanced/gitops/#installing-managed-apps)
- [Using our web interface](https://docs.giantswarm.io/ui-api/web/app-platform/#installing-an-app).
- By creating an [App resource](https://docs.giantswarm.io/ui-api/management-api/crd/apps.application.giantswarm.io/) in the management cluster as explained in [Getting started with App Platform](https://docs.giantswarm.io/app-platform/getting-started/).

## Upgrading

### Upgrading an existing Release to a new major version

A major chart version change (like v0.5.0 -> v1.0.0) indicates that there is an incompatible breaking change needing manual actions.

## Configuration

Kube State Metrics is deployed on all Giant Swarm managed clusters (management and workload clusters alike). If you want to change its configuration, you should see our [full reference on how to configure apps](https://docs.giantswarm.io/app-platform/app-configuration/) for more details.

### Adding custom metrics and labels to metrics

By default, kube-state-metrics is configured to only expose a subset of metrics and labels from the data it fetches from the Kubernetes api-server.

If you want to add some extra metrics or labels to those metrics, you can act on the following values:

```yaml
# Comma-separated list of metrics to be exposed.
# This list comprises of exact metric names and/or regex patterns.
# The allowlist and denylist are mutually exclusive.
metricAllowlist: []

# Comma-separated list of metrics not to be enabled.
# This list comprises of exact metric names and/or regex patterns.
# The allowlist and denylist are mutually exclusive.
metricDenylist: []

# Comma-separated list of additional Kubernetes label keys that will be used in the resource's
# labels metric. By default the metric contains only name and namespace labels.
# To include additional labels, provide a list of resource names in their plural form and Kubernetes
# label keys you would like to allow for them (Example: '=namespaces=[k8s-label-1,k8s-label-n,...],pods=[app],...)'.
# A single '*' can be provided per resource instead to allow any labels, but that has
# severe performance implications (Example: '=pods=[*]').
metricLabelsAllowlist:
# - namespaces=[k8s-label-1,k8s-label-n]

# Comma-separated list of Kubernetes annotations keys that will be used in the resource'
# labels metric. By default the metric contains only name and namespace labels.
# To include additional annotations provide a list of resource names in their plural form and Kubernetes
# annotation keys you would like to allow for them (Example: '=namespaces=[kubernetes.io/team,...],pods=[kubernetes.io/team],...)'.
# A single '*' can be provided per resource instead to allow any annotations, but that has
# severe performance implications (Example: '=pods=[*]').
metricAnnotationsAllowList: []
  # - pods=[k8s-annotation-1,k8s-annotation-n]
```

At Giant Swarm, we use this to expose internal labels to metrics without the need of a relabelling at the prometheus level like so:

```yaml
metricLabelsAllowlist:
 - daemonsets=[giantswarm.io/monitoring_basic_sli, giantswarm.io/service-type, app.kubernetes.io/name, application.giantswarm.io/team]
  - deployments=[giantswarm.io/monitoring_basic_sli, giantswarm.io/service-type, app.kubernetes.io/name, application.giantswarm.io/team]
  - nodes=[ip, giantswarm.io/machine-pool, giantswarm.io/machine-deployment, topology.kubernetes.io/region, topology.kubernetes.io/zone]
  - statefulsets=[giantswarm.io/monitoring_basic_sli, giantswarm.io/service-type, app.kubernetes.io/name, application.giantswarm.io/team]
```

## Limitations

The application and its default values have been tailored to work inside Giant Swarm clusters.
If you want to use it for any other scenario, know that you might need to adjust some values.

## Credit

This application is installing the upstream chart below with defaults to ensure it runs smoothly in Giant Swarm clusters.

* <https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-state-metrics>
