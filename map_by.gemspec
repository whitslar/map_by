Gem::Specification.new do |s|
  s.name        = 'map_by'
  s.version     = '0.0.4'
  s.date        = '2016-10-01'

  s.summary     = "Shorthand for Ruby's map method, e.g.: User.all.map_by(:id, :first_name, 'instance_method.foo.bar')"
  s.authors     = ["Matt Whitslar"]
  s.email       = 'matt.whitslar@gmail.com'
  s.files       = ["lib/map_by.rb"]
  s.homepage    = 'https://github.com/whitslar/map_by'
  s.license     = 'MIT'
end 
