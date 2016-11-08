def jsons_files_list_to_cache(sitemap)
  files_to_cache(sitemap)
    .select { |cachable_file| cachable_file.json? && !cachable_file.excluded? }
end

def templates_files_list_to_cache(sitemap)
  files_to_cache(sitemap)
    .select { |cachable_file| cachable_file.template? }
end


# private

def files_to_cache(sitemap)
  sitemap
    .resources
    .map { |r| CachableFile.new(r) }
end

class CachableFile
  def initialize(resource)
    @resource = resource
  end

  def json?
    path.include?('.json')
  end

  def template?
    path.include?('.tpl.html')
  end

  def excluded?
    path.include?('blog/')
  end

  def path
    @resource.path
  end

  def body
    @resource.render.gsub('"', '\"')
  end
end