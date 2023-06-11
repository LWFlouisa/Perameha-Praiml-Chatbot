      # Require and include gem.
      require 'rexml/document'
      include REXML

      # Read in XML document
      # xmlfile = File.new("grammar.xml")
      xmlfile = File.new("_prologxml/colors_and_shapes.xml")

      xmldoc = Document.new(xmlfile)

      # Get root elements.
      root = xmldoc.root

      # Listen to a form of grammar.
      xmldoc.elements.each("knowledge") { 
        |e| print e.attributes["context"] + " "
      }

      # This will extract the color theory prolog knowledge base.
      xmldoc.elements.each("ctquery/ombrepure")  { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/tonpure")    { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/teintepure") { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/makkana")    { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/vertpur")    { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/pureburu")   { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/tiaka")      { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/timidori")   { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/tiburu")     { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/torogue")    { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/tovert")     { |e| print e.text + "\n" }
      xmldoc.elements.each("ctquery/toburu")     { |e| print e.text + "\n" }

      # This will extract the shape theory specific prolog knowledge base.
      xmldoc.elements.each("stquery/carre")    { |e| print e.text + "\n" }
      xmldoc.elements.each("stquery/maru")     { |e| print e.text + "\n" }
      xmldoc.elements.each("stquery/triangle") { |e| print e.text + "\n" }
      xmldoc.elements.each("stquery/kukei")    { |e| print e.text + "\n" }
