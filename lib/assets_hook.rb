class FilesHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = { })
    javascript_include_tag('ZeroClipboard.js', :plugin => 'redmine_wiki_fast_history')+
        javascript_include_tag('jquery.timeago.js', :plugin => 'redmine_wiki_fast_history')
  end
end