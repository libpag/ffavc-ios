Pod::Spec.new do |s|

  s.name     = 'ffavc'
  s.version  = '1.0.1'
  s.ios.deployment_target   = '9.0'
  s.summary  = 'ffavc SDK'
  s.homepage = 'https://github.com/libpag/ffavc-ios'
  s.source   = {:git => 'https://github.com/libpag/ffavc-ios.git', :tag => s.version.to_s }
  s.license          = { :type => ' LGPL-2.1', :file => 'LICENSE' }
  s.author = {'libpag' => 'libpag@tencent.com'}
  s.vendored_frameworks = 'framework/*.xcframework'
  s.pod_target_xcconfig = { 
   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' 
  }
  s.user_target_xcconfig = { 
   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.xcconfig = {
    'VALID_ARCHS' =>  'arm64 armv7 x86_64',
  }
  
end
