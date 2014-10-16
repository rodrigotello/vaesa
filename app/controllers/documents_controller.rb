class DocumentsController < ApplicationController
  require 'docx'
  
  def new 	
  end

  def convert
    @name = params[:name]
  	doc = Docx::Document.open('document_demo.docx')
  	doc.bookmarks['name'].insert_text_after(@name)
  	#This line saves the document
  	doc.save('app/assets/documents/contrato_'+@name+'.docx')

  	redirect_to contracts_path(name: @name, lastnamea: @lastnamea)
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
    case params[:doc]
      when 1
        send_file 'contracto_'@name'.doc'
      when 2
        send_file '2.doc'
    end
  end
end
