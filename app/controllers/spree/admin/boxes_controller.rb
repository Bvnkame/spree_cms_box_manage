module Spree
  module Admin
    class BoxesController < ResourceController
      before_action :load_data, except: :index

      def model_class
        Bm::Box
      end
      
      def show
        redirect_to action: :edit
      end

      def load_data
        @expert_articles = Bm::Expert.all
        @difficulties = Bm::Difficulty.all
        @time_cooks = (0..4).step(0.5)
      end

      def location_after_save
        edit_admin_box_url(@box)
      end
    end
  end
end