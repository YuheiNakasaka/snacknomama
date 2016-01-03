# coding: utf-8
module Snacknomama
  class Parser
    def initialize(file_name='parsed_snack_names.txt')
      @results = []
      @output_file = "#{File.expand_path('../resources', __FILE__)}/#{file_name}"
    end

    def run
      parsed_data
    end

    private

    def parsed_data
      File.read(@output_file).split("\n")
    end
  end
end