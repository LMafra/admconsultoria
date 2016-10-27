class HomeController < ApplicationController
  def index
  	@contact_form = ContactForm.new()
  end
  def create
      @contact_form = ContactForm.new(params[:contact_form])
      @contact_form.request = request 
       respond_to do |format|
          if @contact_form.deliver 
           format.js
           else 
           format.js
          end       
       end
  end
end
