# require "semantic_ui_rails/version"

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

  # %w(stylesheets javascripts fonts images).each do |type| 
  #   cur_path = "#{type}_path"
  #   def self.cur_path
  #     @'#{cur_path}'
        # Find out how this @'#{cur_path}' works
  #   end
  # end


  # def self.asset_type_path(asset_type)
  #   File.join(assets_path, asset_type)
  # end

  def self.assets_path
  	@assets_path = File.expand_path('../app/assets')
  end

  def self.stylesheets_path
  	@stylesheets_path = File.join(assets_path, 'stylesheets')
  end

  def self.javascripts_path
    @javascripts_path = File.join(assets_path, 'javascripts')
  end

  def self.fonts_path
    @fonts_path = File.join(assets_path, 'fonts')
  end

  def self.images_path
    @images_path = File.join(assets_path, 'images')
  end
  
  module Rails
    class Engine < ::Rails::Engine
    end
  end

end #end of module

puts SemanticUiRails.assets_path
puts SemanticUiRails.stylesheets_path
puts SemanticUiRails.javascripts_path
puts SemanticUiRails.fonts_path  
puts SemanticUiRails.images_path


# src: SemanticUiRails.gem_path + SemanticUiRails.assets_path
# dest: File.join(Rails.path, assets_path)

# binding.pry
# puts __FILE__

