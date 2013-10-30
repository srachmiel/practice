Practice::Application.routes.draw do
  get("/square_root/:number", { :controller => "calculations", :action => "sqrt" })
end
