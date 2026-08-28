# frozen_string_literal: true

require 'sketchup.rb'
require 'extensions.rb'

module THOVENB_Store
  unless file_loaded?(__FILE__)
    loader = File.join(File.dirname(__FILE__), 'thovenb_store', 'main.rb')
    ext = SKP::Extension.new('THOVE-NB Extension Store', loader)
    ext.description = 'Kho tiện ích & Plugin SketchUp chọn lọc bởi THOVE-NB.'
    ext.version     = '1.0.0'
    ext.copyright   = 'THOVE-NB © 2026'
    ext.creator     = 'Nguyễn Bân'

    Sketchup.register_extension(ext, true)
    file_loaded(__FILE__)
  end
end