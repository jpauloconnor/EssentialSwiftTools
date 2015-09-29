Pod::Spec.new do |s|
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "EssentialSwiftTools"
s.summary = "EssentialSwiftTools lets users easily import everyday frameworks for Swift iOS development."
s.requires_arc = true
s.version = "0.1.0"
s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Paul O'Connor'" => "jamespauloconnor@gmail.com" }
s.homepage = "https://github.com/jpauloconnor/EssentialSwiftTools"
s.source = { :git => "https://jpauloconnor@github.com/jpauloconnor/EssentialSwiftTools.git", :tag => "0.1" }


spec.dependency 'SnapKit', '~> 0.12.0'
spec.dependency 'MBProgressHUD', '~> 0.9.1'
spec.dependency 'AFDateHelper'
spec.dependency 'Instabug'
spec.dependency 'TPKeyboardAvoiding'

spec.default_subspec = 'Everything'
end

spec.subspec 'Parse' do |parsespec|
parsespec.dependency 'ParseUI'
parsespec.dependency 'ParseFacebookUtils'
parsespec.dependency 'ParseTwitterUtils'
end

spec.subspec 'Alamofire' do |afspec|
afspec.dependency 'Alamofire', '~> 1.3'
afspec.dependency 'SwiftyJSON', '~> 2.2.1'
end

spec.subspec 'Everything' do |allspec|
allspec.dependency 'ParseUI'
allspec.dependency 'ParseFacebookUtils'
allspec.dependency 'ParseTwitterUtils'
allspec.dependency 'Alamofire', '~> 1.3'
allspec.dependency 'SwiftyJSON', '~> 2.2.1'
end


end
