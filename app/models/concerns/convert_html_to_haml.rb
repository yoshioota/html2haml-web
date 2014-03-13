class ConvertHtmlToHaml

  def self.doit(html)
    file = Tempfile.new(%w[temphtml .html])
    file.write(html)
    file.flush

    `html2haml -e #{file.path}`
  ensure
    file.close
    file.unlink
  end
end