def jsons_files_list(sitemap)
  files_to_cache(sitemap)
    .select { |ftc| ftc.json? }
end

def templates_files_list(sitemap)
  files_to_cache(sitemap)
    .select { |ftc| ftc.template? }
end


# private

def files_to_cache(sitemap)
  sitemap
    .resources
    .map { |r| FileForCache.new(r) }
end

class FileForCache
  def initialize(resource)
    @resource = resource
  end

  def json?
    path.include?('.json')
  end

  def template?
    path.include?('.tpl.html')
  end

  def path
    @resource.path
  end

  def body
    @resource.render.gsub('"', '\"')
  end
end