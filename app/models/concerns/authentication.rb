module Authentication
    
    def authenticated_user!
        redirect_to root_path        
    end
end