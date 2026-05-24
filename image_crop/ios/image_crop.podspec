#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'image_crop'
  s.version          = '0.0.1'
  s.summary          = 'A flutter plugin to crop image on iOS and Android.'
  s.description      = <<-DESC
A flutter plugin to crop image on iOS and Android.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { '' => '' }
  s.source           = { :path => '.' }
  s.source_files = 'image_crop/Sources/image_crop/**/*.{h,m}'
  s.public_header_files = 'image_crop/Sources/image_crop/include/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '12.0'
end

