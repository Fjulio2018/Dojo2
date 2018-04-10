class Edit_tarefa < SitePrism::Page

        element :atividades, :xpath, '//*[@id="grouptab_3"]'
        element :edit_task, :xpath, '//*[@id="moduleTab_6_Tasks"]'
        element :filtro, :xpath, '/html/body/div[4]/div/div[3]/form[2]/div[3]/table/thead/tr[2]/td/table/tbody/tr/td[1]/ul[3]/li/a'
        element :quick, :xpath,  '/html/body/div[4]/div/div[3]/div/div/div/div[1]/ul/li[1]/a'
        element :nome_filtro, :xpath, '//*[@id="name_basic"]'
        element :procurar, 'input#search_form_submit'
        element :editar_task, :xpath,   '/html/body/div[2]/div[1]/div/div[3]/form[2]/div[3]/table/tbody/tr/td[2]/a/span'
        element :descricao_bug,  'textarea#description'
        element :savagem, 'input#SAVE' , match: :first
        element :descricao_salva, :xpath, '//*[@id="description"]'

        def edicao (nome_e_tasck)
            atividades.click
            edit_task.click
            assert_text("Tasks")
            filtro.click
            quick.click
            nome_filtro.set(nome_e_tasck)
            procurar.click
            #assert_text
            editar_task.click


        end


        def editando (descriao)
            descricao_bug.set(descriao) 
            sleep 2
            savagem.click
            sleep 2


        end

        def msgtsked (nome)

            assert_text(nome)
            
        end  



end