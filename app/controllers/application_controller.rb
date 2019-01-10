class ApplicationController < ActionController::Base
    
      before_action :basic

      private
          def basic
            authenticate_or_request_with_http_basic do |name, password|
              name == "admin" && password == "help11"
            end
          end
end
