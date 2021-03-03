require 'json_response'

class ApplicationController < ActionController::API

    include Response    
    include ExceptionHandler

end
