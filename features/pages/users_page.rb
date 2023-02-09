class Users
    include HTTParty
    require_relative '../hooks/users_hook'
    base_uri "https://gorest.co.in"
     
    def initialize(body)
      @options = {:body => body}
      @options2 ={}
    end
  
    def postUsers
      self.class.post("/public/v2/users", @options)
    end

    def getUsers (id)
      self.class.get("/public/v2/users/#{id}", @options2)
    end

    def putUsers (id)
      self.class.put("/public/v2/users/#{id}", @options)
    end

    def deleteUsers (id)
      self.class.delete("/public/v2/users/#{id}", @options2)
    end
  end