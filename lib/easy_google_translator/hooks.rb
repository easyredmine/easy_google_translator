module EasyGoogleTranslator
  class Hooks < Redmine::Hook::ViewListener

    if EASY_EXTENSIONS_ENABLED
      render_on :view_layout_footer_top, :partial => 'google_translator/tool'
    else
      render_on :view_layouts_base_body_bottom, :partial => 'google_translator/tool'
    end

  end
end