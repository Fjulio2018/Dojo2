class Cred_tarefa < SitePrism::Page
        element :criacao,   :xpath, '/html/body/div[2]/nav/div/div[5]/ul/li[1]/a'
        element :taske,     :xpath, '/html/body/div[2]/nav/div/div[5]/ul/li[1]/ul/li[7]/a'
        element :tarefa_nova, 'input#name' 
        element :data_inicial, 'input#date_start_date'
        element :hora_inicial, 'input#date_start_hours'
        element :minuto_inicial, 'input#date_start_minutes'
        element :data_final, 'input#date_due_date'
        element :hora_final, 'input#date_due_hours'
        element :minuto_final, 'input#date_due_minutes'
        element :prioridade_bug, 'select#priority'
        element :descricao_bug,  'textarea#description'
        element :status_bug,  'select#status'
        element :savagem, '#SAVE' , match: :first
  
        

        #Metodo de acesso ao create Task

        def creden
                
            criacao.click
            taske.click

        end

       #Metodo que preenche a tela de task
       
        def preencher(nome,data1,string,string2,data2, string3, string4, string8,descriao,status,related)
            tarefa_nova.set(nome)
            select string8, from: 'priority'
            descricao_bug.set(descriao) 
            select status, from: 'status'
            find('#parent_type').find("option[value='"+related+"']").select_option
            sleep 2
            savagem.click
            sleep 2  
        end
    
        def msgtsk (nome)

            assert_text(nome)
            
        end  
    
end