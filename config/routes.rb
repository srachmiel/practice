Practice::Application.routes.draw do
  get("/square/:zebra", { :controller => "calculations", :action => "sq" })
  get("/square_root/:number", { :controller => "calculations", :action => "sqrt" })
end
