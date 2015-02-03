require 'assets_hook'
require 'redmine'

Redmine::Plugin.register :redmine_wiki_fast_history do
  name 'Redmine Wiki Fast History plugin'
  author 'Alex Sinelnikov'
  description 'Plugin that provide you with fast navigation between wiki pages history'
  version '1.0.0'
  url 'https://github.com/Gera-IT/redmine_wiki_fast_history'
  author_url 'https://github.com/avdept'
  settings :default => {'enabled_fast_history' => true}, :partial => 'settings/history_setting'
end

class AssetViewsLayoutsHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = { })
    javascript_include_tag('ZeroClipboard.js', :plugin => 'redmine_wiki_fast_history')+
        javascript_include_tag('jquery.timeago.js', :plugin => 'redmine_wiki_fast_history')
  end
end