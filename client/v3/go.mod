module github.com/ptabor/etcd/client/v3

go 1.15

require (
	github.com/dustin/go-humanize v1.0.0
	github.com/google/uuid v1.1.2
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0
	github.com/prometheus/client_golang v1.5.1
	github.com/ptabor/etcd/api/v3 v3.5.0-pre
	github.com/ptabor/etcd/pkg/v3 v3.5.0-pre
	go.uber.org/zap v1.16.0
	google.golang.org/grpc v1.29.1
	sigs.k8s.io/yaml v1.2.0
)

replace (
	github.com/ptabor/etcd/api/v3 => ../../api
	github.com/ptabor/etcd/pkg/v3 => ../../pkg
)

// Bad imports are sometimes causing attempts to pull that code.
// This makes the error more explicit.
replace (
	github.com/ptabor/etcd => ./FORBIDDEN_DEPENDENCY
	github.com/ptabor/etcd/v3 => ./FORBIDDEN_DEPENDENCY
	go.etcd.io/tests/v3 => ./FORBIDDEN_DEPENDENCY
)
