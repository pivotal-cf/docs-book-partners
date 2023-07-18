# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# Old 'partners' redirects, now known as tiledev
r301 '/partners/creating.html', 'https://docs.pivotal.io/tiledev/tile-generator.html'
r301 '/partners/decrypt-encrypt-install-file.html', 'https://docs.pivotal.io/pivotalcf/customizing/modify-ops-man.html'
r301 '/partners/deploying-with-bosh.html', 'https://docs.pivotal.io/tiledev/tile-generator.html'
r301 '/partners/deploying-with-ops-man-tile.html', 'https://docs.pivotal.io/tiledev/tile-generator.html'
r301 '/partners/lifecycle-errands.html', 'https://docs.pivotal.io/tiledev/tile-errands.html'
r301 '/partners/migrations.html', 'https://docs.pivotal.io/tiledev/tile-upgrades.html'
r301 '/partners/preparing-ops-man.html', 'https://docs.pivotal.io/tiledev/tile-generator.html'
r301 '/partners/product-template-reference.html', 'https://docs.pivotal.io/tiledev/product-template-reference.html'
r301 '/partners/release-notes-1-7.html', 'https://docs.pivotal.io/tiledev/release-notes-1-7.html'
r301 '/partners/release-notes-1-8.html', 'https://docs.pivotal.io/tiledev/release-notes-1-8.html'
r301 '/partners/release-notes.html', 'https://docs.pivotal.io/tiledev/release-notes-1-8.html'
r301 '/partners/releases.html', 'https://docs.pivotal.io/tiledev/releases.html'
r301 '/partners/sdk.html', 'https://docs.pivotal.io/tiledev/sdk.html'
r301 '/partners/tiles.html', 'https://docs.pivotal.io/tiledev/property-reference.html'

# Add redirect for RLEC
r301 %r{/partners/rlec/(.*)}, '/partners/rle-service-broker/index.html'

# Add redirect for Azure Log Analysis Nozzle, now VMware-owned
r301 %r{/partners/azure-log-analytics-nozzle/(.*)}, '/azure-log-analytics-nozzle/$1'

# Add redirect for VMware Harbor Registry, now no longer a partner doc
r301 %r{/partners/vmware-harbor/(.*)}, '/vmware-harbor/$1'

# Add redirect for VMware Tanzu Observability by Wavefront Nozzle, now no longer a partner doc
r301 %r{/partners/wavefront-nozzle/(.*)}, '/wavefront-nozzle/$1'

# Partners redirects
r301 %r{/partners/appmon/(.*)}, '/partners/dynatrace/index.html'
r301 %r{/partners/ruxit/(.*)}, '/partners/dynatrace/index.html'
r301 %r{/partners/datastax/(.*)}, '/partners/datastax-service-broker/index.html'
r301 %r{/partners/solace-messaging/(.*)}, '/partners/solace-pubsub/index.html'

# Is this current as of Q1 2017?
r301 %r{/partners/cjoc/(.*)}, 'https://docs.pivotal.io'
r301 %r{/partners/p-riakcs/(.*)}, 'https://docs.pivotal.io'
r301 %r{/partners/dingo-postgresql/(.*)}, 'https://docs.pivotal.io'

# Redirect from index back to book
r301 "/partners/", "https://docs.pivotal.io"
r301 "/partners/index.html", "https://docs.pivotal.io"

r301 %r{/partners/aerospike-ee/(.*)}, '/partners/aerospike-ee-managed-service/$1'
# # all partners
# r301 %r{/pivotalcf/(?![\d-]+)(.*)}, "/pivotalcf/1-10/$1"

# Redirects for discontinued Partner documentation

r301 %r{/partners/altoros-jenkins/(.*)}, 'https://docs.pivotal.io'
r301 %r{/partners/altoros-logsearch/(.*)}, 'https://docs.pivotal.io'
r301 %r{/partners/altoros-elasticsearch/(.*)}, 'https://docs.pivotal.io'
r301 %r{/partners/altoros-cassandra/(.*)}, 'https://docs.pivotal.io'
r301 %r{/partners/altoros-aws-s3/(.*)}, 'https://docs.pivotal.io'

# Redirects from docs.pivotal.io to docs.vmware.com
r301 %r{/partners/appdynamics-platform/.*}, 'https://docs.vmware.com/en/AppDynamics-Platform-Monitoring-for-VMware-Tanzu/services/appdynamics-platform-monitoring/index.html'
r301 %r{/partners/aquasec/.*}, 'https://docs.vmware.com/en/Aqua-Security-for-VMware-Tanzu/services/aqua-security-vmware-tanzu/index.html'
r301 %r{/partners/awslabs-service-broker/.*}, 'https://docs.vmware.com/en/AWS-Service-Broker-for-VMware-Tanzu/services/awslabs-service-broker/index.html'
r301 %r{/partners/blackduck-service-broker/.*}, 'https://docs.vmware.com/en/Synopsys-Black-Duck-Service-Broker-for-VMware-Tanzu/services/synopsys-blackduck-service-broker/index.html'
r301 %r{/partners/blue-medora/.*}, 'https://docs.vmware.com/en/Blue-Medora-Nozzle-for-VMware-Tanzu/services/blue-medora-nozzle-vmware-tanzu/index.html'
r301 %r{/partners/boomi-data-services/.*}, 'https://docs.vmware.com/en/Boomi-Data-Services-for-VMware-Tanzu/services/boomi-data-services-vmware-tanzu/index.html'
r301 %r{/partners/contrast-service-broker/.*}, 'https://docs.vmware.com/en/Contrast-Security-Service-Broker-for-VMware-Tanzu/services/contrast-service-broker-vmware-tanzu/index.html'
r301 %r{/partners/cyberark-conjur-service-broker/.*}, 'https://docs.vmware.com/en/CyberArk-Conjur-Service-Broker-for-VMware-Tanzu/services/cyberark-conjur-service-broker-vmware-tanzu/index.html'
r301 %r{/partners/datadog-application-monitoring/.*}, 'https://docs.vmware.com/en/Datadog-Application-Monitoring-for-VMware-Tanzu/services/documentation/index.html'
r301 %r{/partners/datadog/.*}, 'https://docs.vmware.com/en/Datadog-Cluster-Monitoring-for-VMware-Tanzu/services/datadoge-cluster-monitoring-vmware-tanzu/index.html'
r301 %r{/partners/dynatrace-fullstack-addon/.*}, 'https://docs.vmware.com/en/Dynatrace-Full-Stack-Add-on-for-VMware-Tanzu/services/dynatrace-fullstack-addon-vmware-tanzu/index.html'
r301 %r{/partners/dynatrace/.*}, 'https://docs.vmware.com/en/Dynatrace-Service-Broker-for-VMware-Tanzu/services/dynatrace-service-broker-vmware-tanzu/index.html'
r301 %r{/partners/ecs-service-broker.*}, 'https://docs.vmware.com/en/ECS-Service-Broker-for-VMware-Tanzu/services/ecs-service-broker-vmware-tanzu/index.html'
r301 %r{/partners/forgerock/.*}, 'https://docs.vmware.com/en/ForgeRock-Service-Broker-for-VMware-Tanzu/services/forgerock-vmware-tanzu/index.html'
r301 %r{/partners/evolven-change-analytics-service-broker/.*}, 'https://docs.vmware.com/en/Evolven-Change-Analytics-for-VMware-Tanzu/services/evolven-change-analytics-vmware-tanzu/index.html'

r301 %r{/partners/gcp-sb/.*}, 'https://docs.vmware.com/en/GCP-Service-Broker/services/gcp-service-broker/index.html'
r301 %r{/partners/hazelcast/.*}, 'https://docs.vmware.com/en/Hazelcast-Platform-Enterprise-for-VMware-Tanzu/services/hazelcast-platform-enterprise-vmware-tanzu/index.html'
r301 %r{/partners/instana/.*}, 'https://docs.vmware.com/en/Instana-Microservices-Application-Monitoring-for-VMware-Tanzu/services/instana-microservices-application-monitoring/index.html'
r301 %r{/partners/minio-internal-blobstore/.*}, 'https://docs.vmware.com/en/Minio-Internal-Blobstore-for-VMware-Tanzu/services/minio-internal-blobstore-vmware-tanzu/index.html'
r301 %r{/partners/minio.*}, 'https://docs.vmware.com/en/Minio-for-VMware-Tanzu/services/minio-vmware-tanzu/index.html'
r301 %r{/partners/neo4j-enterprise/.*}, 'https://docs.vmware.com/en/Neo4j-Enterprise-for-VMware-Tanzu/services/neo4j-enterprise-vmware-tanzu/index.html'
r301 %r{/partners/new-relic-cluster-monitoring/.*}, 'https://docs.vmware.com/en/New-Relic-Cluster-Monitoring-for-VMware-Tanzu/services/new-relic-cluster-monitoring-vmware-tanzu/index.html'
r301 %r{/partners/new-relic-dotnet-buildpack/.*}, 'https://docs.vmware.com/en/New-Relic-Dotnet-Extension-Buildpack-for-VMware-Tanzu/services/new-relic-dotnet-buildpack-vmware-tanzu/index.html'
r301 %r{/partners/new-relic-nozzle/.*}, 'https://docs.vmware.com/en/New-Relic-Nozzle-for-VMware-Tanzu/services/new-relic-nozzle-vmware-tanzu/index.html'
r301 %r{/partners/newrelic/.*}, 'https://docs.vmware.com/en/New-Relic-Service-Broker-for-VMware-Tanzu/services/new-relic-service-broker-vmware-tanzu/index.html'
r301 %r{/partners/pagerduty/.*}, 'https://docs.vmware.com/en/PagerDuty-Service-Broker-for-VMware-Tanzu/services/pagerduty-service-broker-vmware-tanzu/index.html'
r301 %r{/partners/qualys-cloud-agent.*}, 'https://docs.vmware.com/en/Using-Qualys-Cloud-Agent-for-VMware-Tanzu/services/qualys-cloud-agent-subnav/index.html'
r301 %r{/partners/redis-labs-enterprise-pack/.*}, 'https://docs.vmware.com/en/Redis-Enterprise-for-VMware-Tanzu/services/redislabs-enterprise-vmware-tanzu/index.html'
r301 %r{/partners/rle-service-broker.*}, 'https://docs.vmware.com/en/Redis-Enterprise-Service-Broker-for-VMware-Tanzu/services/redis-enterprise-service-broker-vmware-tanzu/index.html'
r301 %r{/partners/signalfx/.*}, 'https://docs.vmware.com/en/SignalFx-Monitoring-and-Alerting-for-VMware-Tanzu/services/signalFx-monitoring-alerting/index.html'
r301 %r{/partners/signalsciences/.*}, 'https://docs.vmware.com/en/Signal-Sciences-Service-Broker-for-VMware-Tanzu/services/signal-sciences-services-broker-vmware-tanzu/index.html'
r301 %r{/partners/snyk-service-broker/.*}, 'https://docs.vmware.com/en/Snyk-Service-Broker/services/snyk-service-broker-vmware-tanzu/index.html'
r301 %r{/partners/solace-pubsub/.*}, 'https://docs.vmware.com/en/Solace-PubSub-for-VMware-Tanzu/services/solace-messaging-vmwware-tanzu/index.html'
r301 %r{/partners/splunk/.*}, 'https://docs.vmware.com/en/Splunk-Firehose-Nozzle-for-VMware-Tanzu/services/splunk-firehose-nozzle-vmware-tanzu/index.html'
r301 %r{/partners/sumologic-nozzle/.*}, 'https://docs.vmware.com/en/Sumo-Logic-Nozzle-for-VMware-Tanzu/services/sumologic-nozzle-vmware-tanzu/index.html'
r301 %r{/partners/synopsys-seeker/.*}, 'https://docs.vmware.com/en/Synopsys-Seeker-IAST-Service-Broker-for-VMware-Tanzu/services/synopsys-seeker-vmware-tanzu/index.html'
r301 %r{/partners/tibco-businessworks/.*}, 'https://docs.vmware.com/en/TIBCO-BusinessWorks-Container-Edition-Buildpack-VMware-Tanzu/services/tibco-businessworks-container-edition-buildpack-vmware-tanzu/index.html'
r301 %r{/partners/appdynamics/.*}, 'https://docs.vmware.com/en/AppDynamics-Application-Performance-Monitoring-for-VMware-Tanzu/services/appdynamics-application-performance-monitoring/index.html'
r301 %r{/partners/twistlock/.*}, 'https://docs.vmware.com/en/Prisma-Cloud-for-VMware-Tanzu/services/prisma-cloud-vmware-tanzu/index.html'
