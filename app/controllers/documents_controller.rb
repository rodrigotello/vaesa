class DocumentsController < ApplicationController
  require 'docx'
  
  def new 	
  end

  def convert
    @name_first = params[:name_first]
    @name_second = params[:name_second]
    @lastnamea = params[:lastnamea]
    @lastnameb = params[:lastnameb]

  	doc = Docx::Document.open('vaesa_indeterminado.docx')
  	
    doc.bookmarks['name_first'].insert_text_after(@name_first)
    doc.bookmarks['name_second'].insert_text_after(@name_second)
    doc.bookmarks['lastnamea'].insert_text_after(@lastnamea)
    doc.bookmarks['lastnameb'].insert_text_after(@lastnameb)
  	
    #This line saves the document
  	doc.save('app/assets/documents/vaesa_indeterminado_'+@name_first+@lastnamea+'.docx')

  	redirect_to contracts_path(name_first: @name_first, lastnamea: @lastnamea)
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
    @name_first = params[:name_first]
    @lastnamea = params[:lastnamea]
    case params[:doc]
      when "1"
        send_file 'app/assets/documents/vaesa_indeterminado_'+@name_first+@lastnamea+'.docx'
      when "2"
        send_file '2.doc'
    end
    #render 'static_pages/contracts'
  end
end
