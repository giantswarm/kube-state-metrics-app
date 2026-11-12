# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0] - 2026-11-12

### Added

- First release: the upstream kube-state-metrics chart 9.0.1 (kube-state-metrics 2.20.0) with Giant Swarm defaults, aligned with the kube-state-metrics in `kube-prometheus-stack-app`: the image from gsoci, VPA, network policy, the label allowlist, and the relabelings for dashboards and cardinality on the ServiceMonitor.
- Network policy that allows egress to the API server by port, 443 and 6443, like the kube-state-metrics in `kube-prometheus-stack-app`, and ingress to the metrics ports.
- Scrape the kube-state-metrics telemetry endpoint (`selfMonitor`), with the same `app` and `node` labels as the kube-state-metrics endpoint.

[Unreleased]: https://github.com/giantswarm/kube-state-metrics-app/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/giantswarm/kube-state-metrics-app/releases/tag/v0.1.0
