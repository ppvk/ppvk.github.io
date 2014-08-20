require 'haml'

# first we load our haml file
source = File.read('./index.haml')

# update the paths
source.sub! './', './src/'

# then we run it through the haml engine.
engine = Haml::Engine.new(source)

# finally our haml becomes a beautiful butterfly.
File.write('../index.html', engine.render)