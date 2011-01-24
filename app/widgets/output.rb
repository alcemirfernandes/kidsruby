# this is the widget with the console output
class OutputWidget < Qt::Widget
  def initialize(parent = nil)
    super(parent)
    
    font = Qt::Font.new
    font.family = "Courier"
    font.fixedPitch = true
    font.pointSize = 12
    
    @o = Qt::TextEdit.new
    @o.font = font
    @o.read_only = true
    @o.plainText = "KidsRuby v#{KidsRuby::VERSION} ready.\n"
    
    l = Qt::VBoxLayout.new
    l.add_widget(@o)
    self.layout = l

    setSizePolicy(Qt::SizePolicy.new(Qt::SizePolicy::MinimumExpanding, Qt::SizePolicy::MinimumExpanding))
  end
  
  def append(text)
    @o.plainText = @o.plainText + text.to_s
  end
end