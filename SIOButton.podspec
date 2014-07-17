Pod::Spec.new do |s|
  s.name           = 'SIOButton'
  s.version        = '1.0'
  s.summary        = "UIButton wrapper to handle selection via changes to alpha."
  s.homepage       = "https://github.com/billburgess/SIOButton"
  s.author         = { 'Bill Burgess' => 'bill@simplymadeapps.com' }
  s.source         = { :git => 'https://github.com/billburgess/SIOButton.git', :tag => '1.0' }
  s.platform       = :ios, '7.0'
  s.requires_arc   = true
  s.source_files   = 'SIOButton/*.{h,m}'
  s.license        = 'MIT'
end
