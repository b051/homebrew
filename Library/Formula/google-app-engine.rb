require 'formula'

<<<<<<< HEAD
class GoogleAppEngine < Formula
  url 'http://googleappengine.googlecode.com/files/google_appengine_1.4.3.zip'
  homepage 'http://code.google.com/appengine/'
  sha1 'c52c3ae81dcf85534bf2fd86ea76039c9f9abae8'
=======
class GoogleAppEngine <Formula
  url 'http://googleappengine.googlecode.com/files/google_appengine_1.4.2.zip'
  homepage 'http://code.google.com/appengine/'
  sha1 '132d50710b1337169981cd78914d36df29aea722'
>>>>>>> db742a1110bf4bd9e17dd3f71ebcb1ac1d2b046d

  def install
    cd '..'
    share.install 'google_appengine' => name
    bin.mkpath
    %w[appcfg.py bulkload_client.py bulkloader.py dev_appserver.py remote_api_shell.py].each do |fn|
      ln_s share+name+fn, bin
    end
  end
end
