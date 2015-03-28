# require "semantic_ui_rails/version"
require "pry"

module SemanticUiRails
  def self.gem_path
  	@file_name = __FILE__
  	@dirname = File.dirname(@file_name)
  	@gem_path = File.expand_path('..', File.dirname(__FILE__))
  	puts @gem_path
  	puts "=============="
  	puts "file_name #{@file_name}"
  	puts "=============="
  	puts "dirname #{@dirname}"
  	puts "=============="
  	puts "gem_path #{@gem_path}"
  end

  def self.assets_path
  	@assets_path = File.expand_path('../app/assets')
  	puts  @assets_path
  end

  def self.stylesheets_path
  	@stylesheets_path = File.join(assets_path, 'stylesheets')
  end
end

SemanticUiRails.assets_path
SemanticUiRails.stylesheets_path

# src: SemanticUiRails.gem_path + SemanticUiRails.assets_path
# dest: File.join(Rails.path, assets_path)

# binding.pry
# puts __FILE__

