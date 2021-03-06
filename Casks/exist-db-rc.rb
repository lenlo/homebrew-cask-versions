cask 'exist-db-rc' do
  version '5.0.0-RC4'
  sha256 '3a4d3fb6e389c93854468da74d7bea5ef79929fcecd6053385f89509af27328e'

  # dl.bintray.com/existdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'https://exist-db.org/exist/apps/homepage/index.html'

  app 'eXist-db.app'

  zap trash: '~/Library/Application Support/org.exist'

  caveats do
    depends_on_java '8+'
  end
end
