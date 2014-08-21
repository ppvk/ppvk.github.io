require 'haml'
require 'sass'

# first we load our sass file
sass = File.read('./src/style.sass')

# then we run it through the sass engine
css = Sass::Engine.new(sass).render

# following that, we load our haml file
haml = File.read('./src/index.haml')

# then we run it through the haml engine.
html = Haml::Engine.new(haml).render

# then we inline the style using a handy bookmark we placed.
html.gsub! '<!-- style.sass will go here -->', css

# finally our haml becomes a beautiful butterfly.
File.write('./index.html', html)