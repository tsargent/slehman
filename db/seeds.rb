# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 23712824

Video.destroy_all
# Video.create(
#   title: 'x', 
#   embed: 'x',
#   display: true
# )
Video.create(
  title: 'Steve Lehman Octet at the Moers Jazz Festival in 2010', 
  embed: '<iframe src="//www.youtube.com/embed/skwBf5b7rS4" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>',
  display: true
)
Video.create(
  title: 'Steve Lehman Trio', 
  embed: '<iframe src="//www.youtube.com/embed/7vOFtWBNLno" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>',
  display: true
)
Video.create(
  title: 'Steve Lehman Promotional Video for Ableton Live', 
  embed: '<iframe src="//www.youtube.com/embed/o__xVnqhkT0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>',
  display: true
)
Video.create(
  title: 'Fieldwork at The Stone in 2009', 
  embed: '<iframe src="//www.youtube.com/embed/snouzsTbF7M" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>',
  display: true
)
Video.create(
  title: 'ICE performs Steve Lehman\'s <i>Impossible Flow</i> at the Museum of Contemporary Art in Chicago in 2012', 
  embed: '<iframe src="//player.vimeo.com/video/40193780" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>',
  display: true
)
Video.create(
  title: 'ICE performing Steve Lehman\'s evening-length cycle <i>Impossible Flow</i> at Le Poisson Rouge in 2011', 
  embed: '<iframe src="//player.vimeo.com/video/32879997" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>',
  display: true
)
