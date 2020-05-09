require "liquid"
require "yaml"

module AwesomeListGenerator
  Generate = Struct.new(:data, :template, :output) {
    def perform
      File.write(output, Liquid::Template.parse(template_file).render!("data" => YAML.safe_load(data_file)))
    rescue => e
      abort("ERROR: #{e}")
    end

    private

    def data_file
      File.read(data) if File.file?(data)
    end

    def template_file
      File.read(template) if File.file?(template)
    end
  }
end
