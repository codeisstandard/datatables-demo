module DataTables
  extend ActiveSupport::Concern

  module ClassMethods
    def search(params)
      limit(params[:length]).offset(params[:start])
    end
  end
end
