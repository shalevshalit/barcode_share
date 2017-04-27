class BarcodeController < ApplicationController
  def upload
    Rails.logger.info params.permit(:image).to_s
    pic = Picture.create!(params.permit(:image))

    send_data pic.barcode, type: 'image/png', file_name: 'barcode.png', disposition: 'inline'
  end
end
