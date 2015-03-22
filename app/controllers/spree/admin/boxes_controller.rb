module Spree
  module Admin
    class BoxesController < BaseController
      respond_to :html

      def index
        @boxes = Bm::Box.all
      end
      
      def show
        @box = Bm::Box.find_by_id(params[:id])
      end
      
      def create
        
      end
    end
  end
end