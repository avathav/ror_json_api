module Api
  module V1
    class BlogEntriesController < ApplicationController
      before_action :set_api_v1_blog_entry, only: [:show, :edit, :update, :destroy]

      # GET /api/v1/blog_entries
      # GET /api/v1/blog_entries.json
      def index
        @api_v1_blog_entries = Api::V1::BlogEntry.all
      end

      # GET /api/v1/blog_entries/1
      # GET /api/v1/blog_entries/1.json
      def show
      end

      # GET /api/v1/blog_entries/new
      def new
        @api_v1_blog_entry = Api::V1::BlogEntry.new
      end

      # GET /api/v1/blog_entries/1/edit
      def edit
      end

      # POST /api/v1/blog_entries
      # POST /api/v1/blog_entries.json
      def create
        @api_v1_blog_entry = Api::V1::BlogEntry.new(api_v1_blog_entry_params)

        respond_to do |format|
          if @api_v1_blog_entry.save
            format.html { redirect_to @api_v1_blog_entry, notice: 'Blog entry was successfully created.' }
            format.json { render :show, status: :created, location: @api_v1_blog_entry }
          else
            format.html { render :new }
            format.json { render json: @api_v1_blog_entry.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /api/v1/blog_entries/1
      # PATCH/PUT /api/v1/blog_entries/1.json
      def update
        respond_to do |format|
          if @api_v1_blog_entry.update(api_v1_blog_entry_params)
            format.html { redirect_to @api_v1_blog_entry, notice: 'Blog entry was successfully updated.' }
            format.json { render :show, status: :ok, location: @api_v1_blog_entry }
          else
            format.html { render :edit }
            format.json { render json: @api_v1_blog_entry.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /api/v1/blog_entries/1
      # DELETE /api/v1/blog_entries/1.json
      def destroy
        @api_v1_blog_entry.destroy
        respond_to do |format|
          format.html { redirect_to api_v1_blog_entries_url, notice: 'Blog entry was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_api_v1_blog_entry
        @api_v1_blog_entry = Api::V1::BlogEntry.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def api_v1_blog_entry_params
        params.require(:api_v1_blog_entry).permit(:blog_id, :title, :content, :is_visible)
      end
    end
  end
end
