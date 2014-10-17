class DocumentsController < ApplicationController
  require 'docx'
  
  def new 	
  end

  def convert
    #21 Valores dentro del Contrato Indeterminado
    @name_first = params[:name_first]
    @name_second = params[:name_second]
    @lastnamea = params[:lastnamea]
    @lastnameb = params[:lastnameb]
    @birthyear = params[:birthyear] #revisar como llegan estos parámetros
    @nationality = params[:nationality]
    @city = params[:city]
    @state = params[:state]
    @sex = params[:sex]
    @civicstatus = params[:civicstatus]
    @curp = params[:curp]
    @rfc = params[:rfc]
    @social_id = params[:social_id]
    @education = params[:education]
    @salary_amount_number = params[:salary_amount_number]
    @salary_amount_words = params[:salary_amount_words]
    @salary_mode = params[:salary_mode]
    @starting_date = params[:starting_date]
    @tasks = params[:tasks]
    @street = params[:street]
    @number_ext = params[:number_ext]
    @number_int = params[:number_int]
    @neighborhood = params[:neighborhood]
    @zip = params[:zip]
    @phone = params[:phone]
    @email = params[:email]
    @time_at_city = params[:time_at_city]
    @health = params[:health]
    @health_disease = params[:health_disease]
    @pregnancy = params[:pregnancy]
    @retirement = params[:retirement]
    @retirement_type = params[:retirement_type]
    @retirement_cause = params[:retirement_cause]
    @house_credit = params[:house_credit]
    @house_credit_type = params[:house_credit_type]
    @job_secondary = params[:job_secondary]
    @salary_secondary = params[:salary_secondary]
    @taxes_declaration = params[:taxes_declaration]
    @afore = params[:afore]
    @imss_number = params[:imss_number]
    @profession_id = params[:profession_id]
    @driver_license_id = params[:driver_license_id]
    @driver_license_type = params[:driver_license_type]
    @passport_id = params[:passport_id]
    @passport_type = params[:passport_type]
    @job_additional_a = params[:job_additional_a]
    @military_id_status = params[:military_id_status]
    @military_id_status_other = params[:military_id_status_other]
    @personal_reference_1_name = params[:personal_reference_1_name]
    @personal_reference_1_address = params[:personal_reference_1_address]
    @personal_reference_1_phone = params[:personal_reference_1_phone]
    @personal_reference_1_relationship = params[:personal_reference_1_relationship]
    @personal_reference_2_name = params[:personal_reference_1_name]
    @personal_reference_2_address = params[:personal_reference_1_address]
    @personal_reference_2_phone = params[:personal_reference_1_phone]
    @personal_reference_2_relationship = params[:personal_reference_1_relationship]
    @personal_reference_3_name = params[:personal_reference_1_name]
    @personal_reference_3_address = params[:personal_reference_1_address]
    @personal_reference_3_phone = params[:personal_reference_1_phone]
    @personal_reference_3_relationship = params[:personal_reference_1_relationship]
    @real_state_own = params[:real_state_own]
    @real_state_value = params[:real_state_value]
    @real_state_location = params[:real_state_location]
    @car_own = params[:car_own]
    @car_brand = params[:car_brand]
    @car_model = params[:car_model]
    @car_value = params[:car_value]
    @car_payment_status = params[:car_payment_status]
    @car_payment_status_other = params[:car_payment_status_other]
    @debts = params[:debts]
    @debts_type = params[:debts_type]
    @deposit = params[:deposit]
    @deposit_amount = params[:deposit_amount]
    @deposit_company = params[:deposit_company]
    @deposit_status = params[:deposit_status]
    @deposit_status_company_other = params[:deposit_status_company_other]
    @saving_account = params[:saving_account]
    @saving_account_bank = params[:saving_account_bank]
    @checks_account = params[:checks_account]
    @checks_account_bank = params[:checks_account_bank]
    @credit_card = params[:credit_card]
    @credit_card_bank = params[:credit_card_bank]
    @other_bank_accounts = params[:other_bank_accounts]
    @other_bank_accounts_amount = params[:other_bank_accounts_amount]
    @life_insurance = params[:life_insurance]
    @life_insurance_amount = params[:life_insurance_amount]
    @life_insurance_company = params[:life_insurance_company]
    @medical_insurance = params[:medical_insurance]
    @medical_insurance_company = params[:medical_insurance_company]
    @father_name = params[:father_name]
    @father_address = params[:father_address]
    @father_economic_dependency = params[:father_economic_dependency]
    @mother_name = params[:mother_name]
    @mother_address = params[:mother_address]
    @mother_economic_dependency = params[:mother_economic_dependency]
    @son_name = params[:son_name]
    @son_address = params[:son_address]
    @son_economic_dependency = params[:son_economic_dependency]
    @other_related_name = params[:other_related_name]
    @other_related_address = params[:other_related_address]
    @other_related_relationship = params[:other_related_relationship]
    @other_related_economic_dependency = params[:other_related_economic_dependency]
    @other_related_name2 = params[:other_related_name2]
    @other_related_address2 = params[:other_related_address2]
    @other_related_relationship2 = params[:other_related_relationship2]
    @other_related_economic_dependency2 = params[:other_related_economic_dependency2]
    @bachelor_status = params[:bachelor_status]
    @bachelor_status_living = params[:bachelor_status_living]
    @employer_name_1 = params[:employer_name_1]
    @employer_address_1 = params[:employer_address_1]
    @employer_phone_1 = params[:employer_phone_1]
    @employer_start_1 = params[:employer_start_1]
    @employer_leaving_1 = params[:employer_leaving_1]
    @employer_leaving_reason_1 = params[:employer_leaving_reason_1]
    @employer_position_1 = params[:employer_position_1]
    @employer_activities_1 = params[:employer_activities_1]
    @employer_initial_salary_1 = params[:employer_initial_salary_1]
    @employer_final_salary_1 = params[:employer_final_salary_1]
    @employer_name_2 = params[:employer_name_2]
    @employer_address_2 = params[:employer_address_2]
    @employer_phone_2 = params[:employer_phone_2]
    @employer_start_2 = params[:employer_start_2]
    @employer_leaving_2 = params[:employer_leaving_2]
    @employer_leaving_reason_2 = params[:employer_leaving_reason_2]
    @employer_position_2 = params[:employer_position_2]
    @employer_activities_2 = params[:employer_activities_2]
    @employer_initial_salary_2 = params[:employer_initial_salary_2]
    @employer_final_salary_2 = params[:employer_final_salary_2]
    @employer_name_3 = params[:employer_name_3]
    @employer_address_3 = params[:employer_address_3]
    @employer_phone_3 = params[:employer_phone_3]
    @employer_start_3 = params[:employer_start_3]
    @employer_leaving_3 = params[:employer_leaving_3]
    @employer_leaving_reason_3 = params[:employer_leaving_reason_3]
    @employer_position_3 = params[:employer_position_3]
    @employer_activities_3 = params[:employer_activities_3]
    @employer_initial_salary_3 = params[:employer_initial_salary_3]
    @employer_final_salary_3 = params[:employer_final_salary_3]
    @courses = params[:courses]
    @skills = params[:skills]
    @expected_salary = params[:expected_salary]
    @expected_position = params[:expected_position]
    @available_date = params[:available_date] #Revisar como funciona esta línea, para saber como dividir los parámetros 
    @travel_availability = params[:travel_availability]
  

  	doc1 = Docx::Document.open('vaesa_indeterminado.docx')
      doc1.bookmarks['name_first'].insert_text_after(@name_first)
      doc1.bookmarks['name_second'].insert_text_after(@name_second)
      doc1.bookmarks['lastnamea'].insert_text_after(@lastnamea)
      doc1.bookmarks['lastnameb'].insert_text_after(@lastnameb)
  	#This line saves the document
  	doc1.save('app/assets/documents/vaesa_indeterminado_'+@name_first+@lastnamea+'.docx')

  	redirect_to contracts_path(name_first: @name_first, lastnamea: @lastnamea)
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

end
