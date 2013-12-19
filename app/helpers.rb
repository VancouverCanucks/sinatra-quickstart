module AppHelper
  
  def js_loading_tags
    case ENV['RACK_ENV']
    when 'production'
      return '<script src="/js/application.min.js"></script>'
    else
      includes = ''
      manifest = [
        '/js/vendor/bootstrap.min.js',
        '/js/app/main.js'
      ].each do |file|
        includes += "<script src=\"#{file}\"></script>\n"
      end
      return includes
    end
  end
  
end