require "thor"

module AwesomeListGenerator
  class CLI < Thor
    desc "generate <output> --data <data> --template <template>", "Uses the supplied data file and template file to generate your output file."
    option :data, banner: "<data> A file path to your YAML data source. Ex: './data.yml'", required: true, type: :string
    option :template, banner: "<tempalte> A file path to your Liquid template. Ex: './template.liquid'", required: true, type: :string
    def generate(output = nil)
      abort("You need to provide the output path for your list!") unless output
      AwesomeListGenerator::Generate.new(options[:data], options[:template], output).perform
    end
  end
end
