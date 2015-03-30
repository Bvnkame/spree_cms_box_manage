module Spree
  module Admin
    class BoxesController < ResourceController
      before_action :load_data, except: :index

      def model_class
        Bm::Box
      end

      def index
      end
      
      def show
        redirect_to action: :edit
      end
      
      def create
        
      end

      def load_data
      end
      
    end
  end
end