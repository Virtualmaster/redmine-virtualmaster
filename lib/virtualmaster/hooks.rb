module MyPlugin
  class Hooks < Redmine::Hook::ViewListener
#    render_on :view_layouts_base_html_head,
#              :partial => 'hooks/view_layouts_base_html_head'
    render_on :view_layouts_base_body_bottom,
              :partial => 'hooks/view_layouts_base_body_bottom'

  end
end