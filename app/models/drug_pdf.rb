require "render_anywhere"

class DrugPdf
  include RenderAnywhere

  def initialize(drugs)
    @drugs = drugs
  end

  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A4')
    kit.to_file("#{Rails.root}/public/drug.pdf")
    # using PDFKit to save the PDF file in the rails public folder
  end

  private

  attr_reader :drugs

  def as_html
    render template: "drugs/pdf", layout: "drugs_pdf", locals: { drugs: drugs }
    # layout refers to drugs_pdf.erb
  end
end
