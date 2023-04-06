module github.com/giantswarm/kube-state-metrics-app

go 1.14

require (
	github.com/giantswarm/apptest v1.2.1
	github.com/giantswarm/backoff v1.0.0
	github.com/giantswarm/microerror v0.4.0
	github.com/giantswarm/micrologger v1.0.0
	golang.org/x/oauth2 v0.0.0-20211104180415-d3ed0bb246c8 // indirect
	k8s.io/apimachinery v0.26.3
	k8s.io/client-go v0.24.2 // indirect
	sigs.k8s.io/controller-runtime v0.12.3 // indirect
)

replace github.com/coreos/etcd v3.3.10+incompatible => github.com/coreos/etcd v3.3.25+incompatible
