Pod::Spec.new do |s|
s.name         = 'ZXCollectionView'
s.version      = '1.0.4'
s.summary      = '快速构建CollectionView'
s.homepage     = 'https://github.com/SmileZXLee/ZXCollectionView'
s.license      = 'MIT'
s.authors      = {'李兆祥' => '393727164@qq.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/SmileZXLee/ZXCollectionView.git', :tag => s.version}
s.source_files = 'ZXCollectionViewDemo/ZXCollectionViewDemo/ZXCollectionView/**/*'
s.requires_arc = true
end