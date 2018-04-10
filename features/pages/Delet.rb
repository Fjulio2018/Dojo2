class Delit_tarefa < SitePrism::Page
        element :atividades, :xpath, '//*[@id="grouptab_3"]'
        element :task, :xpath, '//*[@id="moduleTab_6_Tasks"]'
        element :filtro, :xpath, '/html/body/div[4]/div/div[3]/form[2]/div[3]/table/thead/tr[2]/td/table/tbody/tr/td[1]/ul[3]/li/a'
        element :quick, :xpath,  '/html/body/div[4]/div/div[3]/div/div/div/div[1]/ul/li[1]/a'
        element :nome_filtro, :xpath, '//*[@id="name_basic"]'
        element :limpa_filtro, 'input#search_form_clear'
        element :procurar, 'input#search_form_submit'
        element :box,  :xpath, '/html/body/div[2]/div[1]/div/div[3]/form[2]/div[3]/table/tbody/tr/td[1]/input'
        element :botao_acao,  'a#delete_listview_top'  , match: :first
        element :botao_delet, :xpath, '//*[@id="actionLinkTop"]/li/ul/li[3]'


        def deletar (nome_e_tasck)
            atividades.click
            task.click
            assert_text("Tasks")
            sleep 1
            filtro.click
            sleep 1
            quick.click
            sleep 1
            nome_filtro.set(nome_e_tasck)
            sleep 1
            procurar.click
        end

        def delete_agora
            box.click
            sleep 1
            botao_acao.click
            sleep 1
            botao_delet.click
            sleep 1
            page.driver.browser.switch_to.alert.accept
        end

   
        def valida_del (nome_e_tasck)
            atividades.click
            task.click
            assert_text("  Tasks ")
            assert_text('No results found for "' + nome_e_tasck+'"')
            
        end
   

end

