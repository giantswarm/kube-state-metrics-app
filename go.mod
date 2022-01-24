module github.com/giantswarm/kube-state-metrics-app

go 1.14

require (
	github.com/giantswarm/apptest v1.0.1
	github.com/giantswarm/backoff v1.0.0
	github.com/giantswarm/microerror v0.4.0
	github.com/giantswarm/micrologger v0.6.0
	k8s.io/apimachinery v0.21.4
)

replace github.com/coreos/etcd v3.3.10+incompatible => github.com/coreos/etcd v3.3.25+incompatible
