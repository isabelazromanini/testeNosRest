Before '@users' do

    @name = "Teste Teste"
    @gender = "male"
    @email = "teste@teste.com"
    @status = "active"

    @body = {
        "name": @name, 
        "gender":  @gender, 
        "email": @email, 
        "status": @status
    }

    @users = Users.new(@body)
    
end