require 'barby/barcode/qr_code'
require 'barby/outputter/rmagick_outputter'

class Picture < ApplicationRecord
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def barcode
    Barby::QrCode.new(image.url).to_png
  end
end
