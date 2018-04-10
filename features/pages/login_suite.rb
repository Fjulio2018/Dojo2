class Home_login < SitePrism::Page
        set_url "https://demo.suiteondemand.com"

        element :nome_usuario, 'input#user_name'  
        element :senha_usuario, 'input#username_password'
        element :submeter, 'input#bigbutton' 
        

        def login (user_name , username_password )
            nome_usuario.set(user_name)
            senha_usuario.set(username_password)
            submeter.click
        end 
            
        def msg

            assert_text("Recently Viewed")
                
        end    
  
   
    
end   