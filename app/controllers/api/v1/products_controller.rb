module Api
    module V1

        class ProductsController < ApplicationController

            def index
                if(params[:query].present?)
                    records = Product.select(:id, :name, :description).where("lower(name) LIKE lower(?)", "%#{params[:query]}%")
                else
                    records = Product.select(:id, :name, :description)
                end

                render :json => records
            end

            def image
                record = Product.find(params[:id])
                send_data record.image, :type => 'image/png',:disposition => 'inline'
            end

        end

    end
end
