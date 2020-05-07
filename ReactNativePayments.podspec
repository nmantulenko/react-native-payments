require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package["version"]
giturl = package["repository"]["url"]

Pod::Spec.new do |s|
s.name         = "ReactNativePayments"
s.version      = package["version"]
s.summary      = "react-native-payments"
s.homepage     = giturl
s.license      = "MIT"
s.authors      = "Naoufal Kadhom", "Andrej Badin"
s.platform     = :ios, '10.0'
s.source       = { :git => "https://github.com/naoufal/react-native-payments.git", :tag => "#{s.version}" }
s.source_files  = 'lib/ios/*.{h,m}'
s.dependency 'React'
s.requires_arc = true
end
