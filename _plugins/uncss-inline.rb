Jekyll::Hooks.register :documents, :post_write do |doc, payload|
    if doc.output_ext() == '.html'
      cmd = 'python3 _plugins/uncss-inline.py ' + doc.destination('./')
      r = `#{cmd}`
    end
  