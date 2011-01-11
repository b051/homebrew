require 'formula'

class GoogleAppEngine <Formula
  url 'http://googleappengine.googlecode.com/files/google_appengine_1.4.1.zip'
  homepage 'http://code.google.com/appengine/'
  sha1 '379aa89505e3427563a89e3451d6129e4725a533'

  def install
    cd '..'
    share.install 'google_appengine' => name
    bin.mkpath
    %w[appcfg.py bulkload_client.py bulkloader.py dev_appserver.py remote_api_shell.py].each do |fn|
      ln_s share+name+fn, bin
    end
  end
end
