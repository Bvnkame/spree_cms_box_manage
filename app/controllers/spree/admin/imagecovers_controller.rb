module Spree
  module Admin
    class ImagecoversController < ResourceController
      before_action :load_data

      create.before :set_viewable
      update.before :set_viewable

      def model_class
        Bm::Imagecover
      end

      def edit
      end

      def new
        @imagecover = @box.covers.build
        render :layout => false 
      end

      private 
        def location_after_destroy
          admin_box_imagecovers_url(@box)
        end

        def location_after_save
          admin_box_imagecovers_url(@box)
        end

        def load_data
          @box = Bm::Box.find(params[:box_id])
        end

        def set_viewable
          @imagecover.viewable_type = 'Bm::Box'
          @imagecover.viewable_id = params[:imagecover][:viewable_id]
        end
    end
  end
end