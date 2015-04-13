module Spree
  module Admin
    class ImageavatarsController < ResourceController
      before_action :load_data

      create.before :set_viewable
      update.before :set_viewable

      def model_class
        Bm::Imageavatar
      end

      def edit
      end

      def new
        @imageavatar = @expert.avatars.build
        render :layout => false 
      end

      private 
        def location_after_destroy
          admin_expert_imageavatars_url(@expert)
        end

        def location_after_save
          admin_expert_imageavatars_url(@expert)
        end

        def load_data
          @expert = Bm::Expert.find(params[:expert_id])
        end

        def set_viewable
          @imageavatar.viewable_type = 'Bm::Expert'
          @imageavatar.viewable_id = params[:viewable_id]
        end
    end
  end
end