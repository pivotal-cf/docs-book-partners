# Old 'partners' redirects, now known as tiledev
r301 'creating.html', 'https://docs.pivotal.io/tiledev/tile-generator.html'
r301 'decrypt-encrypt-install-file.html', 'https://docs.pivotal.io/pivotalcf/customizing/modify-ops-man.html'
r301 'deploying-with-bosh.html', 'https://docs.pivotal.io/tiledev/tile-generator.html'
r301 'deploying-with-ops-man-tile.html', 'https://docs.pivotal.io/tiledev/tile-generator.html'
r301 'lifecycle-errands.html', 'https://docs.pivotal.io/tiledev/tile-errands.html'
r301 'migrations.html', 'https://docs.pivotal.io/tiledev/tile-upgrades.html'
r301 'preparing-ops-man.html', 'https://docs.pivotal.io/tiledev/tile-generator.html'
r301 'product-template-reference.html', 'https://docs.pivotal.io/tiledev/product-template-reference.html'
r301 'release-notes-1-7.html', 'https://docs.pivotal.io/tiledev/release-notes-1-7.html'
r301 'release-notes-1-8.html', 'https://docs.pivotal.io/tiledev/release-notes-1-8.html'
r301 'release-notes.html', 'https://docs.pivotal.io/tiledev/release-notes-1-8.html'
r301 'releases.html', 'https://docs.pivotal.io/tiledev/releases.html'
r301 'sdk.html', 'https://docs.pivotal.io/tiledev/sdk.html'
r301 'tiles.html', 'https://docs.pivotal.io/tiledev/property-reference.html'

# Partners redirects
r301 %r{/appmon/(.*)}, '/dynatrace/index.html'
r301 %r{/ruxit/(.*)}, '/dynatrace/index.html'

# Is this current as of Q1 2017?
r301 %r{/cjoc/(.*)}, 'https://docs.pivotal.io'
r301 %r{/p-riakcs/(.*)}, 'https://docs.pivotal.io'

# Redirect from index back to book
r301 "index.html", "https://docs.pivotal.io"


# # all partners
# r301 %r{/pivotalcf/(?![\d-]+)(.*)}, "/pivotalcf/1-10/$1"
