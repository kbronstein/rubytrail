#!/usr/bin/env ruby

require 'rexml/document'

doc = REXML::Document.new(DATA)
ruby_creator = REXML::XPath.first(doc, "/languages/language[name='Ruby']/creator")

puts ruby_creator.text

__END__
<?xml version="1.0" encoding="UTF-8"?>
<languages>

  <language>
    <name>Ruby</name>
    <creator>Yukihiro Matsumoto</creator>
    <creationDate>1995</creationDate>
  </language>

  <language>
    <name>Java</name>
    <creator>James Gosling</creator>
    <creationDate>1995</creationDate>
  </language>

</languages>
