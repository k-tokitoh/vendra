class Loader
  def initialize
    @loader = Zeitwerk::Loader.new
  end

  def setup
    @loader.push_dir(File.expand_path('../app',              File.dirname(__FILE__)))

    @loader.collapse(File.expand_path('../app/values',       File.dirname(__FILE__)))
    @loader.collapse(File.expand_path('../app/models',       File.dirname(__FILE__)))
    @loader.collapse(File.expand_path('../app/cli/concerns', File.dirname(__FILE__)))

    @loader.inflector.inflect("cli" => "CLI")

    @loader.setup
  end
end