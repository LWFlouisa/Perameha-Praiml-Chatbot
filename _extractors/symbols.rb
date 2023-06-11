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

      # This will extract the color theory palette.
      xmldoc.elements.each("ctsymbols/ombrepure")  { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/tonpure")    { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/teintepure") { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/makkana")    { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/vertpur")    { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/pureburu")   { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/tiaka")      { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/timidori")   { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/tiburu")     { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/torogue")    { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/tovert")     { |e| print e.text + "\n" }
      xmldoc.elements.each("ctsymbols/toburu")     { |e| print e.text + "\n" }

      # This will extract the shape theory and print it to the screen.
      xmldoc.elements.each("stsymbols/carre")    { |e| print e.text + "\n" }
      xmldoc.elements.each("stsymbols/maru")     { |e| print e.text + "\n" }
      xmldoc.elements.each("stsymbols/triangle") { |e| print e.text + "\n" }
      xmldoc.elements.each("stsymbols/kukei")    { |e| print e.text + "\n" }
