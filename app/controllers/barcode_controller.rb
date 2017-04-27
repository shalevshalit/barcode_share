class BarcodeController < ApplicationController
  def upload
    pic = Picture.new(params.permit(:image))

    send_data pic.barcode, type: 'image/png', file_name: 'barcode.png', disposition: 'inline'
  end
end
