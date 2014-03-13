class ApiController < ApplicationController

  #
  # convert html to haml
  #
  def convert
    haml = ConvertHtmlToHaml.doit(params[:html])

    respond_to do |format|
      format.text { render text: haml}
      format.json { render json: {json: haml}}
    end
  end
end