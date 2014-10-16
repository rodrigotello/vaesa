class DocumentsController < ApplicationController
  require 'docx'
  
  def new 	
  end

  def convert
    @name_first = params[:name_first]
  	doc = Docx::Document.open('document_demo.docx')
  	doc.bookmarks['name'].insert_text_after(@name_first)
  	#This line saves the document
  	doc.save('app/assets/documents/contrato_'+@name_first+'.docx')

  	redirect_to contracts_path(name: @name_first, lastnamea: @lastnamea)
  end

  def cleaner
    @documents_quantity = Dir.entries('app/assets/documents').count - 2
  end

  def clean
    Dir.entries('app/assets/documents').each do |f|
      if f != '.' && f != '..'
        File.delete 'app/assets/documents/'+f
      end
    end
    redirect_to cleaner_path
  end

  def download
    @name = params[:name]
    case params[:doc]
      when "1"
        send_file 'app/assets/documents/contrato_'+@name+'.docx'
      when 2
        send_file '2.doc'
    end
    #render 'static_pages/contracts'
  end
end
