def ng_template_url(template_rel_path)
  template_path = if(template_rel_path[-1] == '/')
                    component_name = template_rel_path.chomp('/')
                    "#{component_name}/#{component_name}"
                  else
                    template_rel_path
                  end

  asset_url("assets/app/components/#{template_path}.tpl.html")
end