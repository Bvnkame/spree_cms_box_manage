module Spree
  module Admin
    class ExpertsController < ResourceController
      before_action :load_data, except: :index

      def model_class
        Bm::Expert
      end

      def load_data
      end

      def show
        redirect_to :action => :edit
      end

      def location_after_save
        edit_admin_expert_url(@expert)
      end
    end
  end
end