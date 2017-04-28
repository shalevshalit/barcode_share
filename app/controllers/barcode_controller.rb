class BarcodeController < ApplicationController
  def upload
    pic = Picture.create!(params.permit(:image))

    render json: {barcode_id: pic.id}
  end

  def show
    pic = Picture.find(params[:id])
    send_data pic.barcode, type: 'image/png', file_name: 'barcode.png', disposition: 'inline'
  end
end
