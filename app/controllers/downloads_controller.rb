class DownloadsController < ApplicationController
  # NEED TO UPDATE "DRUG.ALL TO DRUGS CHOSEN" - maybe add table in database called "searches" and another joining table linking drugs to particular search_id
  def index
    respond_to do |format|
      format.pdf {
        send_file DrugPdf.new(Drug.all).to_pdf,
          filename: "data_download",
          type: "application/pdf",
          disposition: "inline" # can also do "attachment" for download
      }
    end
  end
end
