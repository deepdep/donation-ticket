require 'barby/barcode/qr_code'
require 'barby/outputter/svg_outputter'

module ApplicationHelper
  def qrcode_svg(content, opts = {})
    opts = opts.reverse_merge(xdim: 3)
    qr_code = Barby::QrCode.new(content)
    raw Barby::SvgOutputter.new(qr_code).to_svg(opts)
  end
end
