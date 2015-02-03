require 'assets_hook'
require 'redmine'

Redmine::Plugin.register :redmine_wiki_fast_history do
  name 'Redmine Wiki Fast History plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end


class FilesHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = { })
      javascript_include_tag('ZeroClipboard.js', :plugin => 'redmine_wiki_fast_history')+
        javascript_include_tag('jquery.timeago.js', :plugin => 'redmine_wiki_fast_history')
  end
end