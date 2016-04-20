class Web < Rasti::Web::Application

  use Rack::Static, urls: Dir.glob(File.expand_path('assets/*', '.')).map { |dir| "/#{File.basename(dir)}" },
                    root: File.expand_path('assets', '.')
  
  get '' do |request, response, render|
    render.view :index
  end

end