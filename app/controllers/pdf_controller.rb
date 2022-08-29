class PdfController < ApplicationController
    def index
        @data ="Index"
    end

    def show
        respond_to do |format|
            format.html
            format.pdf do
              render  pdf: "file_name",
                        show_as_html: params.key?('debug'), 
                        page_size: 'A4',
                        template: "pdf/show",
                        layout: "pdf",
                        orientation: "Portrait",
                        lowquality: true,
                        zoom: 1,
                        dpi: 75,
                        format: :pdf
            end
        end
    end
end
