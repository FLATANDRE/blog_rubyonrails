module Authentication
    
    def authenticated_user!
        unless session[:current_user].nil?
            redirect_to root_path
        end
        redirect_to root_path        
    end

    def current_user_name
        unless session[:current_user].nil?            
            session[:current_user]['username'] 
        end
    end

    def current_user
        unless session[:current_user].nil?
            session[:current_user]['email']  
        end
    end

    def current_user_roles
        unless session[:current_user].nil?
            session[:current_user]['roles'] 
        end
    end
end