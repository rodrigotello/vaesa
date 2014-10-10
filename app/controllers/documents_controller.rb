class DocumentsController < ApplicationController
  require 'docx'
  
  def new
  	
  end

  def convert
  	@name = params[:name]
	doc = Docx::Document.open('document_demo.docx')
	doc.bookmarks['name'].insert_text_after(@name)
	#This line saves the document
	doc.save('contrato_'+@name+'.docx')

	redirect_to contracts_path
  end

end
