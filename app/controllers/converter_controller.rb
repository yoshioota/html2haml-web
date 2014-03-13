class ConverterController < ApplicationController

  def index
    @converter = Converter.new
    @converter.html ||= <<-EOS
<html>
  hello world!
</html>
    EOS
  end
end
