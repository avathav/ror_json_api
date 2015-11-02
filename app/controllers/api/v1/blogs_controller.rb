module Api
  module V1
    class BlogsController < ApplicationController
      before_action :set_api_v1_blog, only: [:show, :edit, :update, :destroy]

      # GET /api/v1/blogs
      # GET /api/v1/blogs.json
      def index
        @api_v1_blogs = Api::V1::Blog.all
      end

      # GET /api/v1/blogs/1
      # GET /api/v1/blogs/1.json
      def show
      end

      # GET /api/v1/blogs/new
      def new
        @api_v1_blog = Api::V1::Blog.new
      end

      # GET /api/v1/blogs/1/edit
      def edit
      end

      # POST /api/v1/blogs
      # POST /api/v1/blogs.json
      def create
        @api_v1_blog = Api::V1::Blog.new(api_v1_blog_params)

        respond_to do |format|
          if @api_v1_blog.save
            format.html { redirect_to @api_v1_blog, notice: 'Blog was successfully created.' }
            format.json { render :show, status: :created, location: @api_v1_blog }
          else
            format.html { render :new }
            format.json { render json: @api_v1_blog.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /api/v1/blogs/1
      # PATCH/PUT /api/v1/blogs/1.json
      def update
        respond_to do |format|
          if @api_v1_blog.update(api_v1_blog_params)
            format.html { redirect_to @api_v1_blog, notice: 'Blog was successfully updated.' }
            format.json { render :show, status: :ok, location: @api_v1_blog }
          else
            format.html { render :edit }
            format.json { render json: @api_v1_blog.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /api/v1/blogs/1
      # DELETE /api/v1/blogs/1.json
      def destroy
        @api_v1_blog.destroy
        respond_to do |format|
          format.html { redirect_to api_v1_blogs_url, notice: 'Blog was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_api_v1_blog
        @api_v1_blog = Api::V1::Blog.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def api_v1_blog_params
        params.require(:api_v1_blog).permit(:title, :decrtiption, :is_visible)
      end
    end
  end
end
