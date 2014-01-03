class ProductsController < ApplicationController
	def index
		@products = Product.search(params[:search])
	end
	def show
		# debugger
		# @categories = Category.where(parent_id:nil)
		@product = Product.find(params[:id])
	end
	def new
		@categories = Category.all
		@product = Product.new
	end
	def edit
		@product = Product.find(params[:id])
	end
	def create
		@categories = Category.where(parent_id:nil)
		@product = Product.new(params[:product])
		# debugger
		if @product.save
			redirect_to category_products_path(@categories)
		else
			render 'new'
		end
	end
	def update
		@categories = Category.where(parent_id:nil)
		@product = Product.find(params[:id])
		if @product.update_attributes(params[:product])
			redirect_to product_path(@product)
		else
			render 'edit'
		end
	end
	def destroy
		@product = Product.find(params[:id])
		if @product.delete
			redirect_to product_path(@product)
		else
			render 'index'
		end
	end
end
