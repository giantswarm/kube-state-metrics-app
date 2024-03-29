# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project's packages adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Deprecate chart.

## [1.15.0] - 2023-04-04

### Added

- Add cilium network policies.

## [1.14.2] - 2023-01-10

### Changed

- Re add to Azure collections.

## [1.14.1] - 2022-11-22

### Changed

- Set Helm chart ownership to team atlas.

## [1.14.0] - 2022-09-15

### Changed

- Upgrade kube-state-metrics to 2.6.0

## [1.13.0] - 2022-09-09

### Add

- Allow `topology.kubernetes.io/region` & `topology.kubernetes.io/zone` labels.

## [1.12.1] - 2022-08-29

### Changed 

- Rename from `kube-state-metrics-app` to `kube-state-metrics`

## [1.12.0] - 2022-08-29

### Changed

- Use upstream chart to 4.16.0 with our defaults
- Upgrade kube-state-metrics from 2.3.0 to 2.5.0

## [1.11.0] - 2022-06-27

### Add

- Allow `application.giantswarm.io/team` label.

## [1.10.0] - 2022-04-19

### Changed

- Add `Node Pool` labels to the default allowed labels in `--metric-labels-allowlist`.

## [1.9.0] - 2022-04-06

### Changed

- Make `--metric-labels-allowlist` configurable through user values.

## [1.8.0] - 2022-04-06

### Changed

- Allow `giantswarm.io/service-type` labels from kube_<resource-name>_labels (Deployment, DaemonSet, StatefulSet)

## [1.7.0] - 2022-02-16

### Changed

- Raise priorityClass to `system-cluster-critical` to increase scheduling chances in master-only clusters.

## [1.6.1] - 2022-02-04

### Fixed

- Fixed missing labels from kube_<resource-name>_labels

## [1.6.0] - 2022-01-04

### Changed

- Bumped to upstream version v2.3.0.

## [1.5.1] - 2021-11-30

### Fixed

- Fix permission to list and watch `leases.coordination.k8s.io`.

## [1.5.0] - 2021-11-29

### Changed

- Update `architect-orb` to v4.8.0 to stop pushing to app collection helm chart.
- Bumped to upstream version v2.2.4.

## [1.4.0] - 2021-08-10

### Changed

- Migrate to configuration management.
- Update `architect-orb` to v4.0.0.

## [1.3.1] - 2021-03-26

### Changed

- Set docker.io as the default registry

## [1.3.0] - 2020-11-25

### Changed

- Change the Kubernetes Deployment name to include the app version.

## [1.2.1] - 2020-10-29

### Fixed

- Support deployment of `kube-state-metrics-app` on chinese installations.

## [1.2.0] - 2020-09-24

### Added

- Added monitoring annotations and common labels.

### Changed

- Deploy `kube-state-metrics-app` on installations as part of app collection.

## [1.1.1] - 2020-07-22

### Added

- Added workflows for automatic releases.

### Changed

- Updated architect-orb to 0.10.0.
- Update kube-state-metrics version to 1.9.7.

## [1.1.0] - 2020-06-17

### Changed

- Added 100.64.0.0/10 to the allowed egress subnets in NetworkPolicy.

### Fixed

- Fix invalid cluster role binding for Helm 3 compatibility.

## [v1.0.5]

### Changed

- Upgraded to kube-state-metrics [new release 1.9.5](https://github.com/kubernetes/kube-state-metrics/releases/tag/v1.9.5)

## [v1.0.4]

### Changed

- Remove addon resizer container

## [v1.0.3]

### Fixed

- Remove CPU/memory limits on the deployment

## [v1.0.2]

### Changed

- Adjust RBAC configuration to include networkpolicies and admissionregistration for k8s 1.16 compatibility

## [v1.0.1]

### Changed

- Upgrade to kube-state-metrics [1.9.2](https://github.com/kubernetes/kube-state-metrics/releases/tag/v1.9.2)
- Upgrade to k8s 1.16 compatible addon-resizer release 1.8.7
- Adjust RBAC configuration for k8s 1.16 compatibility

## [v1.0.0]

### Changed

- Upgraded to kube-state-metrics [new release 1.9.0](https://github.com/kubernetes/kube-state-metrics/releases/tag/v1.9.0)

## [v0.6.0]

### Changed

- Upgraded to kube-state-metrics [new release 1.8.0](https://github.com/kubernetes/kube-state-metrics/releases/tag/v1.8.0)
- Fix templating for image registry.

## [v0.5.0]

### Changed

- Migrated to be deployed via an app CR not a chartconfig CR.

## [v0.4.0]

### Changed

- Upgraded to kube state metric [new release 1.7.2](https://github.com/kubernetes/kube-state-metrics/releases/tag/v1.7.2)

## [v0.3.4]

### Changed

- Increase memory resources from 300Mi to 350Mi.

## [v0.3.3]

### Changed

- Change priority class to `giantswarm-critical`.

## [v0.3.2]

### Changed

- Add missing RBAC resources to cluster role.

## [v0.3.1]

### Changed

- Add `apps` api group in RBAC for deployments, daemonsets and replicas.

## [v0.3.0]

### Changed

- Upgraded to kube state metric [new release 1.6.0](https://github.com/kubernetes/kube-state-metrics/releases/tag/v1.6.0)
- Tuned the addon resizer for bigger clusters.


[Unreleased]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.15.0...HEAD
[1.15.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.14.2...v1.15.0
[1.14.2]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.14.1...v1.14.2
[1.14.1]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.14.0...v1.14.1
[1.14.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.13.0...v1.14.0
[1.13.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.12.1...v1.13.0
[1.12.1]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.12.0...v1.12.1
[1.12.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.11.0...v1.12.0
[1.11.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.10.0...v1.11.0
[1.10.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.9.0...v1.10.0
[1.9.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.8.0...v1.9.0
[1.8.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.7.0...v1.8.0
[1.7.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.6.1...v1.7.0
[1.6.1]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.6.0...v1.6.1
[1.6.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.5.1...v1.6.0
[1.5.1]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.5.0...v1.5.1
[1.5.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.4.0...v1.5.0
[1.4.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.3.1...v1.4.0
[1.3.1]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.3.0...v1.3.1
[1.3.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.2.1...v1.3.0
[1.2.1]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.1.1...v1.2.0
[1.1.1]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.0.5...v1.1.0
[v1.0.5]: https://github.com/giantswarm/kube-state-metrics-app/compare/v1.0.4...v1.0.5
[v1.0.4]: https://github.com/giantswarm/kube-state-metrics-app/releases/tag/v1.0.4
[v1.0.3]: https://github.com/giantswarm/kube-state-metrics-app/releases/tag/v1.0.3
[v1.0.2]: https://github.com/giantswarm/kube-state-metrics-app/releases/tag/v1.0.2
[v1.0.1]: https://github.com/giantswarm/kube-state-metrics-app/releases/tag/v1.0.1
[v1.0.0]: https://github.com/giantswarm/kube-state-metrics-app/releases/tag/v1.0.0
[v0.7.0]: https://github.com/giantswarm/kube-state-metrics-app/releases/tag/v0.7.0
[v0.6.0]: https://github.com/giantswarm/kube-state-metrics-app/releases/tag/v0.6.0
[v0.5.0]: https://github.com/giantswarm/kube-state-metrics-app/releases/tag/v0.5.0
[v0.4.0]: https://github.com/giantswarm/kubernetes-kube-state-metrics/pull/49
[v0.3.4]: https://github.com/giantswarm/kubernetes-kube-state-metrics/pull/47
[v0.3.1]: https://github.com/giantswarm/kubernetes-kube-state-metrics/pull/43
[v0.3.0]: https://github.com/giantswarm/kubernetes-kube-state-metrics/pull/40
