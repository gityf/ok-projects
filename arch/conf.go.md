## Confd
	A lightweight configuration management tool focused on:

	Sync configuration files by polling etcd or consul and processing template resources.
	Reloading applications to pick up new config file changes

- Home page <http://www.confd.io/>
- github <https://github.com/kelseyhightower/confd>

## consul
	Consul is a service mesh solution providing a full featured control plane with service discovery, configuration, and segmentation functionality. Each of these features can be used individually as needed, or they can be used together to build a full service mesh. Consul requires a data plane and supports both a proxy and native integration model. Consul ships with a simple built-in proxy so that everything works out of the box, but also supports 3rd party proxy integrations such as Envoy.

	The key features of Consul are:

### Service Discovery:
		Clients of Consul can register a service, such as api or mysql, and other clients can use Consul to discover providers of a given service. Using either DNS or HTTP, applications can easily find the services they depend upon.

		Health Checking: Consul clients can provide any number of health checks, either associated with a given service ("is the webserver returning 200 OK"), or with the local node ("is memory utilization below 90%"). This information can be used by an operator to monitor cluster health, and it is used by the service discovery components to route traffic away from unhealthy hosts.

### KV Store
	Applications can make use of Consul's hierarchical key/value store for any number of purposes, including dynamic configuration, feature flagging, coordination, leader election, and more. The simple HTTP API makes it easy to use.

### Secure Service Communication
	Consul can generate and distribute TLS certificates for services to establish mutual TLS connections. Intentions can be used to define which services are allowed to communicate. Service segmentation can be easily managed with intentions that can be changed in real time instead of using complex network topologies and static firewall rules.

### Multi Datacenter
	Consul supports multiple datacenters out of the box. This means users of Consul do not have to worry about building additional layers of abstraction to grow to multiple regions.

	Consul is designed to be friendly to both the DevOps community and application developers, making it perfect for modern, elastic infrastructures.

- Home page <https://www.consul.io/intro/index.html>
- github <https://github.com/hashicorp/consul>