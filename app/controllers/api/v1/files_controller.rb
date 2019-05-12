module Api::V1
    class FilesController < ApplicationController
      
        def index
            send_file params['path'], :type => 'image/jpeg', :disposition => 'inline'
        end
    end
end