Dado('o endereço da API para manter o cadastro de usuario') do
     #já instanciado pela classe Startup
  end
  
  Quando('realizar uma requisição para cadastrar um usuario') do
    $response = @users.postUsers
  end
  
  Então('a API irá retornar os dados do cadastro de usuario respondendo o código {int}') do |int|
    #expect do status code e message
    expect($response.code).to eq(int)
    puts "Response code: #{$response.code}"
    expect($response.message).to eq("Created")
    puts "Response Message: #{$response.message}"
    
    #imprime os atributos da requisição
    puts "ID    : #{$response["id"]}"
    puts "Name  : #{$response["name"]}"
    puts "E-mail  : #{$response["email"]}"
    puts "Gender : #{$response["gender"]}"
    puts "Status: #{$response["status"]}"

    $id = $response["id"]
  end
  
  Quando('realizar uma requisição passando o ID do usuario') do
    $response = @users.getUsers("344868")
  end
  
  Então('a API irá retornar os dados do usuario correspondente respondendo o código {int}') do |int|
    expect($get.code).to eq(int)
    expect($get.message).to eq("OK")
    expect($get["id"]).to eq($response["id"])

    puts "ID    : #{$get["id"]}"
    puts "Name  : #{$get["name"]}"
    puts "E-mail  : #{$get["email"]}"
    puts "Gender : #{$get["gender"]}"
    puts "Status: #{$get["status"]}"
    puts "Status Code: #{$get.code}"
  end
  
  Quando('realizar uma requisição para alterar um usuario') do
    $response = @users.putUsers("344868")
  end
  
  Então('a API irá retornar os dados do usuario alterados respondendo o código {int}') do |int|
    expect($put.code).to eq(int)
    expect($put.message).to eq("OK")
    expect($put["id"]).to eq($response["id"])

    puts "ID    : #{$put["id"]}"
    puts "Name  : #{$put["name"]}"
    puts "E-mail  : #{$put["email"]}"
    puts "Gender : #{$put["gender"]}"
    puts "Status: #{$put["status"]}"
    puts "Status Code: #{$put.code}"
  end
  
  Quando('realizar uma requisição para excluir um usuario') do
    $response = @users.deleteUsers("344868")
  end

  Então("a API deverá retornar os dados da exclusão respondendo o código {int}") do |int|
    expect($delete.code).to eq(int)
    expect($delete.message).to eq("OK")


    puts "ID    : #{$delete["id"]}"
    puts "Name  : #{$delete["name"]}"
    puts "E-mail  : #{$delete["email"]}"
    puts "Gender : #{$delete["gender"]}"
    puts "Status: #{$delete["status"]}"
    puts "Status Code: #{$delete.code}"
end