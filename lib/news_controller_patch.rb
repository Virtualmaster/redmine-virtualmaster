module NewsControllerPatch
  def self.included(base)
    base.class_eval do
     unloadable
     accept_api_auth :index, :create

     def create_with_plugin
       puts "!!!!!!!!!!!!!!!! bang, patched controller!"
       begin
         @project = Project.find(params[:project_id])
       rescue ActiveRecord::RecordNotFound
         render_404
         return
       end
       @news = News.new(:project => @project, :author => User.current)
       @news.safe_attributes = params[:news]
       @news.save_attachments(params[:attachments])
       if @news.save
         respond_to do |format|
           format.html do
             render_attachment_warning_if_needed(@news)
             flash[:notice] = l(:notice_successful_create)
             redirect_to :controller => 'news', :action => 'index', :project_id => @project
           end
           format.json do
               render :status => :created, :text => @news.to_json
           end
         end
       else
         respond_to do |format|
           format.html {render :action => 'new'}
           format.api  { render_validation_errors(@news) }
         end
       end
       end
       alias_method_chain :create, :plugin
     end
   end
end
