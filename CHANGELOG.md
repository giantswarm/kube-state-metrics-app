# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Add icon to chart.yaml
- Enable `selfMonitor` to scrape the kube-state-metrics telemetry endpoint, aligning with `kube-prometheus-stack-app`.

### Changed

- Align KSM config with `kube-prometheus-stack-app`: raise CPU limit to `2000m` (so VPA can scale up) and add `app.circleci.com/circle-project-reponame` to the pods metric label allowlist.
- Remove the `podSecurityPolicy` value. The upstream chart 9.x no longer renders a PodSecurityPolicy.

### Fixed

- Fix invalid `node]` target label in the ServiceMonitor relabeling config.
- The `helm.sh/chart` label is valid for long chart versions: the 63-character cut trims the whole trailing run of `-`, `.` and `_`.
- Set `override_app_version: false` in CI so the chart `appVersion` stays pinned to the bundled kube-state-metrics binary version instead of the chart git tag.
- Set `appVersion` to 2.20.0, the kube-state-metrics version the upstream chart 9.0.1 ships.

[Unreleased]: https://github.com/giantswarm/kube-state-metrics-app/tree/main
