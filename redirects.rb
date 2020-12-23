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
