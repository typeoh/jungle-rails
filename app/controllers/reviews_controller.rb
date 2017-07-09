class ReviewsController < ApplicationController   
 
   def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.product = Product.find params[:product_id]

    if @review.save
      redirect_to @review.product, notice: 'Review Saved!'
    else
      redirect_to [:products, :show]
    end
  end

    private

  def review_params
    params.require(:review).permit(
      :description, 
      :rating
    )
  end
end
