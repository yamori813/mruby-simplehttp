MRuby::Gem::Specification.new('mruby-simplehttp') do |spec|
  spec.license = 'MIT'
  spec.authors = 'MATSUMOTO Ryosuke'
  spec.version = '0.0.1'
  if build.cc.defines.flatten.include?("YABM_DUMMY")  &&
    !build.cc.defines.flatten.include?("YABM_.*")
    # need mruby-socket or mruby-uv
    spec.add_dependency('mruby-env')
    spec.add_dependency('mruby-socket', :core => 'mruby-socket')
    spec.add_test_dependency('mruby-sprintf', :core => 'mruby-sprintf')
    spec.add_dependency('mruby-polarssl')
  end
end
